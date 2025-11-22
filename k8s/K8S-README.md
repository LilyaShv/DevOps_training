# Kubernetes Deployment – QuakeWatch

## 1. Overview

This document describes how to deploy the **QuakeWatch** Flask application  
(`lilyashved/devops_training:1.0`) to a local Kubernetes cluster using **Minikube**.

It covers:

- Pod/Deployment and ReplicaSet
- Service (NodePort) for external access
- Horizontal Pod Autoscaler (HPA) based on CPU
- ConfigMap and Secret for configuration management
- CronJob for periodic tasks
- Liveness and Readiness probes for health checks

> Note: The manifests are stored under the `k8s/` directory.

---

## 2. Prerequisites

To run this setup locally, you would need:

- Docker 
- `kubectl` 
- `minikube` 

## 3. Start a local Kubernetes cluster (Minikube)
minikube start --driver=docker
kubectl get nodes 

## 4. Apply Kubernetes manifest + Check the resources

## 5. Horizontal Pod Autoscaling (HPA)

## 6. ConfigMaps and Secrets

## 7. CronJobs
The k8s/cronjob.yaml file defines a CronJob that runs every 5 minutes.

## 8. Liveness and Readiness Probes: The Deployment includes both liveness and readiness probes.
- Liveness probe: checks whether the application is still alive.
If it fails repeatedly, Kubernetes restarts the container.

- Readiness probe: checks whether the application is ready to receive traffic.
If it fails, the Pod is temporarily removed from the Service endpoints.