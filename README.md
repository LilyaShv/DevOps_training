# QuakeWatch – DevOps Training Project

## 1. Project Overview

QuakeWatch is a simple **Python Flask** web application used for practicing basic **Docker** and **DevOps** concepts.

The application exposes a single HTTP endpoint:

- `GET /` → returns: `Hello, World!`

This project demonstrates:

- Creating a minimal Flask application.
- Containerizing the app using **Docker** and a **Dockerfile**.
- Running the app using **docker run** and **docker-compose**.
- Building and tagging a Docker image.
- Pushing the image to **Docker Hub**.

---
## 2. Prerequisites

To build and run this project you need:

- Docker installed and running (Docker Desktop on Windows/macOS, or Docker Engine on Linux)
- Python 3.x if you want to run the app locally without Docker
- Docker Hub account (username: `lilyashved`) to push the image

## 3. Build the Docker image
docker build -t lilyashved/devops_training:1.0 .

## 4. Run the container with docker run
docker run -p 5000:5000 lilyashved/devops_training:1.0

## 5.Run the container with Docker Compose

## 6. Push the image to Docker Hub

## 7. Docker volumes 
We use a Docker volume (quakewatch_data) mounted to /data inside the container to demonstrate persistent storage.
Any files written to /data will be kept even if the container is removed.