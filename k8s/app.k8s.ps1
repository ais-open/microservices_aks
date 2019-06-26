#=============================================================================
# ! APPLICATION KUBERNETES SETUP 
#=============================================================================


#=============================================================================
# ! LOGIN
# LOGIN TO AZURE
az login

# GET AKS CREDENTIALS
az aks get-credentials --resource-group "microservicesaks-rgp" --name "microservicesaks" --overwrite-existing --admin

# BROWSE AKS
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard
az aks browse --resource-group "microservicesaks-rgp" --name "microservicesaks"
#=============================================================================


#=============================================================================
# ! DISKS FOR STORAGE
kubectl apply -f "./app.storage.yaml"
#=============================================================================


#=============================================================================
# ! BOOK MICROSERVICE > DB 

# SERVICE
kubectl apply -f "./bookreview-book/bookreview-book-db.service.yaml"

# SECRET FOR SQL ADMIN CREDETIALS
kubectl apply -f "./bookreview-book/bookreview-book-db.secret.yaml"

# CLAIM STORAGE
kubectl apply -f "./bookreview-book/bookreview-book-db.storageclaim.yaml"

# PODS
kubectl apply -f "./bookreview-book/bookreview-book-db.deployment.yaml"

# CREATE DATABASE, TABLES AND POPULATE WITH SEED DATA
$sqlPod = kubectl get pods --selector=app=bookreview-book-db -o=jsonpath='{.items[0].metadata.name}'
kubectl cp ./bookreview-book/bookreview-book-db.sql ($sqlPod +  ":/tmp/bookreview-book-db.sql")
kubectl exec $sqlPod -- bash -c "cd /opt/mssql-tools/bin && ./sqlcmd -S bookreview-book-db-svc -U SA -P Vslivemarch2019! -i /tmp/bookreview-book-db.sql"

#=============================================================================


#=============================================================================
# ! BOOK MICROSERVICE > API 

# SERVICE
kubectl apply -f "./bookreview-book/bookreview-book-api.service.yaml"

# CONFIG
kubectl create configmap bookreview-book-cmp --from-env-file "./bookreview-book/bookreview-book-api.properties"

# PODS
kubectl apply -f "./bookreview-book/bookreview-book-api.deployment.yaml"
#=============================================================================

#=============================================================================
# ! UI MICROSERVICE
# SERVICE
kubectl apply -f "./bookreview-ui/bookreview-ui.service.yaml"

# CONFIG FOR API URLs 
kubectl create configmap bookreview-ui-cmp --from-env-file "./bookreview-ui/bookreview-ui.properties"

# DEPLOY PODS
kubectl apply -f "./bookreview-ui/bookreview-ui.deployment.yaml"
#=============================================================================

#=============================================================================
# ! INGRESS TIED TO PUBLIC IP  
# CREATE PUBLIC STATIC IP  
$ingressIP = az network public-ip show -g "MC_microservicesaks-rgp_microservicesaks_eastus" -n "bookreview-ingress-ip" -o tsv --query "{address: ipAddress}"

# SAVE INGRESS URL TO CONFIG
( Get-Content ./app.properties ) | ForEach-Object { $_ -replace "BASE_URL=.+" , "BASE_URL=http://$ingressIP" } | Set-Content "./app.properties"
kubectl create configmap bookreview-cmp --from-env-file ./app.properties

# CREATE NGINX INGRESS CONTROLLER
helm install stable/nginx-ingress --set controller.replicaCount=2,controller.name=microservicesaks,controller.service.loadBalancerIP=$ingressIP

# CREATE K8S INGRESS & CONFIGURE ROUTES
kubectl apply -f "./app.ingress.yaml"
#=============================================================================


#=============================================================================
# ! REVIEWCOMMENT MICROSERVICE - SERVICE BUS TOKEN  

$topicSASToken = New-MySASToken  -URI "microservicesaks-bus.servicebus.windows.net/microservicesaks-top/messages" -AccessPolicyName "RootManageSharedAccessKey" -AccessPolicyKey "ugpscC+m/X5sF18EqclyVeaoyer3w5zefKmCcWzOl1g="
( Get-Content "./bookreview-reviewcomment/bookreview-reviewcomment-api.properties" ) | ForEach-Object { $_ -replace "SERVICEBUS_SASTOKEN=.+" , "SERVICEBUS_SASTOKEN=$topicSASToken" } | Set-Content "./bookreview-reviewcomment/bookreview-reviewcomment-api.properties"
#=============================================================================


#=============================================================================
# ! REPEAT FOR EACH MICROSERVICE - DB & API
("rating", "category", "bestseller", "onlinestore", "reviewcomment") | ForEach-Object {
    
    $serviceName = $_

    # CREATE SQL SERVER
    kubectl apply -f "./bookreview-$serviceName/bookreview-$serviceName-db.deployment.yaml"
    kubectl apply -f "./bookreview-$serviceName/bookreview-$serviceName-db.secret.yaml"
    kubectl apply -f "./bookreview-$serviceName/bookreview-$serviceName-db.storageclaim.yaml"
    kubectl apply -f "./bookreview-$serviceName/bookreview-$serviceName-db.service.yaml"

    # CREATE DATABASE ON SQL SERVER
    $sqlPod = kubectl get pods "--selector=app=bookreview-$serviceName-db" -o=jsonpath='{.items[0].metadata.name}'
    kubectl cp "./bookreview-$serviceName/bookreview-$serviceName-db.sql" ($sqlPod +  ":/tmp/bookreview-$serviceName-db.sql")
    kubectl exec $sqlPod -- bash -c "cd /opt/mssql-tools/bin && ./sqlcmd -S bookreview-$serviceName-db-svc -U SA -P Vslivemarch2019! -i /tmp/bookreview-$serviceName-db.sql"

    # CREATE API    
    kubectl apply -f "./bookreview-$serviceName/bookreview-$serviceName-api.service.yaml"
    kubectl create configmap "bookreview-$serviceName-cmp" --from-env-file "./bookreview-$serviceName/bookreview-$serviceName-api.properties"
    kubectl apply -f "./bookreview-$serviceName/bookreview-$serviceName-api.deployment.yaml"
}
#=============================================================================


#=============================================================================
# ! RATING MICROSERVICE >  JOB
$subscriptionSASToken = New-MySASToken -URI "microservicesaks-bus.servicebus.windows.net/microservicesaks-top/subscriptions/bookreview-job-sub/messages/head" -AccessPolicyName "RootManageSharedAccessKey" -AccessPolicyKey "ugpscC+m/X5sF18EqclyVeaoyer3w5zefKmCcWzOl1g="
( Get-Content "./bookreview-rating/bookreview-rating-job.properties" ) | ForEach-Object { $_ -replace "SERVICEBUS_TOKEN=.+" , "SERVICEBUS_TOKEN=$subscriptionSASToken" } | Set-Content "./bookreview-rating/bookreview-rating-job.properties"

# CONFIG FOR SERVICE BUS CONNECTION STRING
kubectl create configmap bookreview-rating-job-cmp --from-env-file "./bookreview-rating/bookreview-rating-job.properties"

# CRON JOB
kubectl apply -f "./bookreview-rating/bookreview-rating-job.cron.yaml"
#=============================================================================


#=============================================================================
# ! APPENDIX
#=============================================================================


#=============================================================================
# ! SECRET STRING
$secret = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes("..your secret here..."))
#=============================================================================


#=============================================================================
# ! SAS TOKEN GENERATION
function New-MySASToken {
    param ($URI, $AccessPolicyName, $AccessPolicyKey)
    [Reflection.Assembly]::LoadWithPartialName("System.Web") | out-null
    $expires=([DateTimeOffset]::Now.ToUnixTimeSeconds())+999999
    $signatureString=[System.Web.HttpUtility]::UrlEncode($URI)+ "`n" + [string]$expires
    $hmac = New-Object System.Security.Cryptography.HMACSHA256
    $hmac.key = [Text.Encoding]::ASCII.GetBytes($AccessPolicyKey)
    $signature = $HMAC.ComputeHash([Text.Encoding]::ASCII.GetBytes($signatureString))
    $signature = [Convert]::ToBase64String($Signature)
    $sasToken = "SharedAccessSignature sr=" + [System.Web.HttpUtility]::UrlEncode($URI) + "&sig=" + [System.Web.HttpUtility]::UrlEncode($signature) + "&se=" + $expires + "&skn=" + $AccessPolicyName
    return $sasToken
}
#=============================================================================
