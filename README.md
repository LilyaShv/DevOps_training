# QuakeWatch – DevOps Training Project

## 1. Project Overview
QuakeWatch is a simple **Python Flask** web application developed as part of a **DevOps training project**.
The application exposes a single HTTP endpoint:
- `GET /` → returns: `Hello, World!`

The goal of this project is to demonstrate a **complete DevOps workflow**, including containerization, Kubernetes deployment, Helm packaging, Git version control, and CI/CD automation using Jenkins.
---

## 2. Technologies Used

- Python (Flask)
- Docker & Docker Compose
- Kubernetes (Minikube)
- Helm
- Git & GitHub
- Jenkins (CI/CD)
- Docker Hub (Image Registry)

---

## 3. Prerequisites

To run and deploy this project, the following tools are required:

- Docker installed and running
- Kubernetes cluster (Minikube)
- Helm
- Git
- Jenkins (local installation)

---

## 4. Application Structure
DevOps_training/
├── app/
│ └── app.py
├── docker/
│ └── Dockerfile
├── helm/
│ └── my-app/
│ ├── Chart.yaml
│ ├── values.yaml
│ └── templates/
│ ├── deployment.yaml
│ └── service.yaml
├── k8s/
│ ├── deployment.yaml
│ ├── service.yaml
│ ├── configmap.yaml
│ ├── secret.yaml
│ ├── hpa.yaml
│ └── cronjob.yaml
├── docker-compose.yml
├── Jenkinsfile
└── README.md

Raw Kubernetes manifests are kept under the `k8s/` directory for reference, while Helm is used for deployment automation.
---

## 5. Docker

### Build Docker Image
```bash
docker build -t lilyashved/devops_training:1.0 -f docker/Dockerfile .

Run with Docker
docker run -p 5000:5000 lilyashved/devops_training:1.0

Run with Docker Compose
docker-compose up

Push Image to Docker Hub
docker push lilyashved/devops_training:1.0
---

## 6. Kubernetes
The Kubernetes configuration includes:
Deployment, Service, ConfigMap, Secret, HPA, Cronjob

---

## 7. Helm – Package Management
A Helm chart was created to package the Kubernetes application.

---

## 8. Git Version Control
The project is managed using Git and GitHub.

---

## 9. CI/CD Pipeline with Jenkins:
A Jenkins CI/CD pipeline was implemented using a Jenkinsfile.
Pipeline Stages:
- Checkout source code from GitHub.
- Build Docker image.
- Run basic tests.
- Push image to Docker Hub.
- Deploy application to Kubernetes using Helm.
This pipeline automates the process from code changes to deployment.