#=============================================================================
# ! BASE INFRASTRUCTURE
#=============================================================================

#=============================================================================
# ! AUTHENTICATE WITH AZURE
az login
az account set --subscription "...your subscription here..."
#=============================================================================

#=============================================================================
# ! RESOURCE GROUP
az group create --location "East US" --name "microservicesaks-rgp"
#=============================================================================

#=============================================================================
# ! VNET & SUBNET
# CREATE VNET & SUBNET. BOTH CAN BE COMBINED INTO SINGLE CALL
az network vnet create -g "microservicesaks-rgp" -n "microservicesaks-vnet" -l "East US" `
                        --address-prefix "10.10.0.0/20" 

az network vnet subnet create -g "microservicesaks-rgp" --vnet-name "microservicesaks-vnet" -n "bookreview-snt" `
                        --address-prefix "10.10.0.0/23"                         

$subnetId = az network vnet subnet list -g "microservicesaks-rgp" --vnet-name "microservicesaks-vnet"  -o json --query "[?name == 'bookreview-snt'].id | [0]"
#=============================================================================

#=============================================================================
# ! ACR
# CREATE AZURE CONTAINER REGISTRY & GET ID. ID WILL BE USED LATER TO ASSIGN ACCESS TO AKS SPN.
az acr create --name "microservicesaks" --resource-group "microservicesaks-rgp" --admin-enabled --location "East US" --sku "Basic"
$acrId = az acr show --resource-group "microservicesaks-rgp" --name "microservicesaks" --query "id" --output tsv
#=============================================================================

#=============================================================================
# ! LOG ANALYTICS
# DEPLOY LOG ANALYSTICS ARM TEMPLATE & GET ID
az group deployment create --resource-group "microservicesaks-rgp" --name "microservicesaks-log-deployment" --template-file "./microservicesaks.loganalytics.template.json"
$loganalyticsid = "/subscriptions/...your subscription id.../resourcegroups/microservicesaks-rgp/providers/microsoft.operationalinsights/workspaces/microservicesaks-log"

# ENABLE CONTAINER MONITORING SOLUTION - SELECT LOG ANALYTICS RESOURCE > CONFIGURE MONITORING SOLUTIONS > ADD CONTAINER MONITORING SOLUTION
#=============================================================================


#=============================================================================
# ! SERVICE BUS
az servicebus namespace create --name "microservicesaks-bus" --resource-group "microservicesaks-rgp" --location "East US" --sku "Standard"
az servicebus topic create --name "microservicesaks-top" --namespace-name "microservicesaks-bus" --resource-group "microservicesaks-rgp"
az servicebus topic subscription create --name "bookreview-job-sub" --topic-name "microservicesaks-top" --namespace-name "microservicesaks-bus" --resource-group "microservicesaks-rgp"
#=============================================================================


#=============================================================================
# ! PUBLIC IP  
# CREATE PUBLIC STATIC IP  
$ingressIP = az network public-ip create -g "MC_microservicesaks-rgp_microservicesaks_eastus" -n "bookreview-ingress-ip" --allocation-method static -o json --query "publicIp.ipAddress"
#=============================================================================


#=============================================================================
# ! SERVICE PRINCIPAL
# CREATE AZURE SERVICE PRINCIPAL TO BE USED BY AKS CLUSTER FOR CREATING RESOURCES & ACCESSING ACR
$spnPassword = az ad sp create-for-rbac --name "http://microservicesaks-spn" -o json --query "password"
$spnAppId = az ad sp show --id "http://microservicesaks-spn" -o json --query "appId"


# GIVE SERVICE PRINCIPLE READ ACCESS TO ACR
az role assignment create --assignee $spnAppId --scope $acrId --role acrpull
#=============================================================================


#=============================================================================
# ! AKS
# CREATE AKS
az feature register --name VMSSPreview --namespace Microsoft.ContainerService
az provider register --namespace Microsoft.ContainerService

az aks create --kubernetes-version 1.12.6 `
            --name "microservicesaks" --resource-group "microservicesaks-rgp"  --generate-ssh-keys --location "East US" `
            --vnet-subnet-id $subnetId `
            --service-principal $spnAppId --client-secret $spnPassword `
            --enable-vmss --enable-cluster-autoscaler --min-count 3 --max-count 20 `
            --node-count 3  --node-osdisk-size 50 --node-vm-size "Standard_DS2_v2" `
            --dns-name-prefix "microservicesaks" `
            --network-plugin azure `
            --max-pods 30 `
            --enable-addons monitoring --workspace-resource-id $loganalyticsid 
#=============================================================================


#=============================================================================
# ! ADVANCE ACI SETUP
# ACI ROLE SETUP USING HELM
kubectl apply -f "./base.helm-tiller.serviceaccount.yaml"
helm init --service-account tiller

# ENABLE AKS FOR ACI VIRTUALNODE
az aks install-connector --name "microservicesaks" --resource-group "microservicesaks-rgp" `
                          --connector-name aci-connector --service-principal $spnAppId --client-secret $spnPassword `
                          --aci-resource-group "microservicesaks-rgp" --os-type Linux

# SECRET FOR ACR TO BE USED BY ACI
kubectl create secret docker-registry microservicesaks-acr-sec --docker-server="microservicesaks.azurecr.io" --docker-username="microservicesaks" --docker-password="...acr key here..." --docker-email="...your email here..."
#=============================================================================