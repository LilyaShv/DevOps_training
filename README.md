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
- Running a container with **Docker volumes** for persistent storage.

---

## 2. Project Structure

```text
DevOps_training/
├── app.py                # Flask application
├── Dockerfile            # Instructions to build the Docker image
├── docker-compose.yml    # Configuration to run the container using Docker Compose
└── README.md             # Project documentation
