## Microservices AKS
### T06 - Microservices with Azure Kubernetes Services (AKS)
### VSLive March 5 2019, Las Vegas - 9:30 AM
### By Vishwas Lele & Gautam Shah

All .ps1 files can be executed in PowerShell ISE or PowerShell Command Prompt. PowerShell comes installed on Windows Desktop and Server. Go to Windows search and type "PowerShell ISE". Alternatively you can install and use PowerShell Extension in Visual Studio Code.

* tools-setup.ps1
This file contains links for installing Docker, Azure CLI, Kubernetes command line Kubectl and Kubernetes package manager Helm, on your local machine


* infrastructure-base/base.infrastructure.ps1
This files code to create base infrastructure such as Azure VNET, Azure Subnet, Azure Container Registry (ACR), Azure Container Service (AKS), Azure Log Analytics & Azure Service Bus

* BookReview-UI, BookReview-Book, BookReview-Rating, BookReview-Category, BookReview-OnlineStore, BookReview-ReviewComment
These folders contain reference applications microservices source code files including Dockerfile.

* docker/base.docker.ps1
This file contains code to tag and push base Docker images such as Microsoft's mssql, dotnet sdk, etc.

* docker/app.docker.ps1
This file contains code to tag and push reference application Docker images such as BookReview-UI, BookReview-Book, etc.

* k8s
This folder contains Kubernetes files to deploy reference application to Kubernetes Cluster. app.k8s.ps1 is primary file that uses other files.
