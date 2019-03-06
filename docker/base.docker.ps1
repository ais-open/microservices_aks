#=============================================================================
# ! BASE DOCKER IMAGES
#=============================================================================


#=============================================================================
# ! RETREIVE IMAGES FROM PUBLIC DOCKER REPO
docker pull microsoft/dotnet:2.2-sdk
docker pull microsoft/dotnet:2.2-aspnetcore-runtime
docker pull microsoft/dotnet:2.2-runtime
docker pull mcr.microsoft.com/mssql/server:2017-latest-ubuntu
#=============================================================================


#=============================================================================
# ! SEND TO ACR
# LOGIN TO ACR
docker login microservicesaks.azurecr.io -u microservicesaks -p "...key here..."

# TAG & PUSH TO ACR

# MSSQL
docker tag mcr.microsoft.com/mssql/server microservicesaks.azurecr.io/microsoft/mssql
docker push microservicesaks.azurecr.io/microsoft/mssql

# DOTNET SDK
docker tag microsoft/dotnet:2.2-aspnetcore-runtime microservicesaks.azurecr.io/microsoft/dotnet:2.2-sdk
docker push  microservicesaks.azurecr.io/microsoft/dotnet:2.2-sdk

# ASP.NET CORE RUNTIME
docker tag microsoft/dotnet:2.2-aspnetcore-runtime microservicesaks.azurecr.io/microsoft/dotnet:2.2-aspnetcore-runtime
docker push microservicesaks.azurecr.io/microsoft/dotnet:2.2-aspnetcore-runtime

# DOTNET RUNTIME
docker tag microsoft/dotnet:2.2-runtime microservicesaks.azurecr.io/microsoft/dotnet:2.2-runtime
docker push microservicesaks.azurecr.io/microsoft/dotnet:2.2-runtime
#=============================================================================
