## End to end Machine Learning Project

- AWS Deployment : ECR, EC2, Github Action

- Azure Deployment: Container Registries, Web App

docker build -t testdockernico.azurecr.io/studentperformance:latest .

docker login testdockernico.azurecr.io

docker push testdockernico.azurecr.io/studentperformance:latest
