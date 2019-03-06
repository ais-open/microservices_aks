#=============================================================================
# ! APP DOCKER IMAGES - BUILD & PUSH TO ACR
#=============================================================================


#=============================================================================
# ! ACR LOGIN
docker login microservicesaks.azurecr.io -u microservicesaks -p "...key here..."
#=============================================================================


#=============================================================================
# ! UI DOCKER IMAGE
# BUILD & PUSH IMAGES 
docker build -t microservicesaks.azurecr.io/bookreview-ui:v1 -f "../BookReview-UI/DockerFile"
docker push microservicesaks.azurecr.io/bookreview-ui:v1
#=============================================================================


#=============================================================================
# ! API DOCKER IMAGES
# BUILD & PUSH IMAGES 
("book", "category", "onlinestore", "bestseller", "rating", "reviewcomment") | ForEach-Object {
    $serviceName = $_
    Write-Warning ("Building Image...$serviceName")
    docker build -t "microservicesaks.azurecr.io/bookreview-$serviceName-api:v1" -f "../BookReview-$serviceName/BookReview-$serviceName-WebApi/DockerFile"

    Write-Warning ("Pushing To Registry Image...$serviceName")
    docker push "microservicesaks.azurecr.io/bookreview-$serviceName-api:v1"
}
#=============================================================================


#=============================================================================
# ! RATING JOB
# BUILD & PUSH IMAGES 
docker build -t "microservicesaks.azurecr.io/bookreview-rating-job:v1" -f "../BookReview-Rating/Bookreview-Rating-Job/DockerFile"
docker push "microservicesaks.azurecr.io/bookreview-rating-job:v1"
#=============================================================================


















#############################################################
# ! LOCAL RUN EXAMPLE
docker run --rm --name bookdb -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Nov12345!" -e "MSSQL_PID=Express" -v C:/MicroservicesAKS/data:/var/opt/mssql -p 1401:1433 -d "mcr.microsoft.com/mssql/server"

docker run -d --rm --env-file ./bookreview.properties -p 8001:80 microservicesaks.azurecr.io/bookreview-book-api:v1
#############################################################
