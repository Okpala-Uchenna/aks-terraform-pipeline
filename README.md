# AzureFlow
### Infrastructure-as-Code Kubernetes Deployment Pipeline on Azure

Provisions a production-style Azure Kubernetes Service (AKS) cluster using Terraform,
then deploys a containerized API to it. This project extends Project 1's CI/CD 
pipeline into real cloud infrastructure — moving from "runs in a container" to 
"runs on an orchestrated, self-healing cluster in the cloud."

## What this project demonstrates

- **Infrastructure as Code (Terraform)** — the entire Azure environment (resource
  group, container registry, Kubernetes cluster) is defined in version-controlled
  code, not clicked together manually in a portal.
- **Private container registry (Azure Container Registry)** — images are pushed to
  a private registry inside Azure's network rather than a public one.
- **Identity-based access between services** — AKS is granted `AcrPull` permission
  on the registry via an Azure role assignment, rather than embedding credentials.
- **Kubernetes orchestration** — deployments, self-healing via liveness probes,
  resource limits, and a public-facing LoadBalancer service.
- **Reproducible, disposable infrastructure** — the entire environment can be torn
  down with one command (`terraform destroy`), leaving no manual cleanup.

## Architecture
