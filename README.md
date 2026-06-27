1. Project Overview:

This project demonstrates an end-to-end automated CI/CD pipeline for a containerized React application, deployed on an Amazon Linux EC2 instance. It covers infrastructure automation, multi-branch pipeline logic, and robust monitoring.

2. Architecture Components:

Version Control: GitHub (with separate dev and main branches).

Automation: Jenkins (Multibranch Pipeline).

Containerization: Docker & Docker Compose.

Infrastructure: AWS EC2 (Amazon Linux).

Observability: Prometheus & Grafana (with Discord alerting).

3. Phase-by-Phase Documentation:

Phase 1: Environment Setup & Dockerization:

Setup: Installed Git, Docker, and Docker Compose on an Amazon Linux EC2 instance.
Dockerization: Created a Dockerfile using a single-stage Nginx build to serve the pre-compiled React application.
Orchestration: Created a docker-compose.yml file to manage the container lifecycle on the EC2 host.
Scripts: Implemented build.sh and deploy.sh for automated build and container management.

Phase 2: CI/CD Pipeline (Jenkins):

Pipeline Logic: Developed a Jenkinsfile that utilizes branching logic:
dev branch: Automatically builds and pushes to a public dev repository on Docker Hub.
main branch: Automatically builds and pushes to a private prod repository on Docker Hub using API-based automation to enforce privacy.
Deployment: The pipeline executes deploy.sh, which automatically removes the old container (if existing) and spins up the new version.

Phase 3: Monitoring & Alerts:

Tools: Prometheus installed as a systemd service, and Grafana installed via Yum.
Alerting: Configured Grafana to send alerts to a Discord channel if the application or server goes down.
Required Screenshots for Final Submission

4. Screenshot

AWS
EC2:
<img width="1915" height="1038" alt="EC2 Instance" src="https://github.com/user-attachments/assets/d2f69a4d-a39e-47ef-829a-8dedb4960945" />

EC2 Security Groups

<img width="1918" height="1032" alt="EC2 Security Groups" src="https://github.com/user-attachments/assets/eecbd721-686d-424a-8d7e-382e5e6b87d0" />

EC Connect with GIT bash

<img width="1930" height="1078" alt="EC2 Connect with GIT bash" src="https://github.com/user-attachments/assets/99c7fae4-664c-4daa-b7fd-77fc7acf6198" />



Live Application

<img width="1918" height="1032" alt="Live Application" src="https://github.com/user-attachments/assets/c6735209-0a46-4224-984f-a292f0a825fd" />


Docker Hub

<img width="1912" height="1028" alt="Docker Public and Private Repo" src="https://github.com/user-attachments/assets/bfcb8beb-68e9-42d9-8b71-8ffb32831966" />

<img width="1918" height="1030" alt="Docker Hub Repo- Build Image " src="https://github.com/user-attachments/assets/06ac4d0d-8285-4a01-8d85-f90f5a78780c" />


Jenkins
Junkins Dashboard:

<img width="1912" height="1028" alt="Jenkins Dashboard" src="https://github.com/user-attachments/assets/34d4ec09-3a63-4cc8-916a-f4d0b2e34472" />

Jenkins Multistage Pipeline

<img width="1918" height="1027" alt="Jenkins Multistage Pipeline" src="https://github.com/user-attachments/assets/5704b928-e9c0-4867-ad7e-4fdd816a3a72" />

Jenkins Trigger by Git Hub WebHook

<img width="1918" height="1032" alt="git hub Webhook Trigger for Jenkins" src="https://github.com/user-attachments/assets/6c8278b1-79d8-4c30-96f8-c5eff6c448ec" />

Jenkins Dev Deployment 

<img width="1917" height="1030" alt="Dev Build" src="https://github.com/user-attachments/assets/cb461c4d-e8b4-4424-95b6-177b4e150cfb" />

<img width="1918" height="1031" alt="Dev Console Output" src="https://github.com/user-attachments/assets/2afa65a2-a539-4f72-96b6-3af27b9eee9b" />

<img width="1916" height="1026" alt="Dev Pipeline Overview" src="https://github.com/user-attachments/assets/22b0c30b-0455-452c-9caf-b77aca4da632" />

Jenkins Main Deployment 

<img width="1918" height="1028" alt="Main build" src="https://github.com/user-attachments/assets/0b7c5bbc-9650-4f5f-9d49-68b6899f829c" />

<img width="1915" height="1031" alt="Main Console Output" src="https://github.com/user-attachments/assets/bbdd4865-c0c8-4918-923e-4000bf0d858c" />

<img width="1918" height="1027" alt="Main Pipeline Overview" src="https://github.com/user-attachments/assets/70def7d1-6c41-44dc-b848-1e283058a027" />

Monitoring

Grafana Dashboard 

Grafana Dashboard with Prometheus - Node Expoter Integration

<img width="1912" height="1035" alt="Grafana Dashboard with Prometheus - Node Expoter Integration" src="https://github.com/user-attachments/assets/00682ad7-7f89-4e9c-a8e7-cf5f4f9b9ec7" />

Grafana alerting Rules

<img width="1918" height="1030" alt="image" src="https://github.com/user-attachments/assets/3e69d161-667f-4c14-91d4-1f02c1a1d8d6" />


Grafana Alert Notification with Discord

<img width="1918" height="1032" alt="image" src="https://github.com/user-attachments/assets/c5008459-0eeb-417b-8201-bc4f52331778" />

Discord Message 

Fired 

<img width="1916" height="1032" alt="image" src="https://github.com/user-attachments/assets/1f94405b-739d-45b6-bd67-3519919e8872" />

Resolved

<img width="1918" height="1031" alt="image" src="https://github.com/user-attachments/assets/e4fa469b-1e6a-4734-9c30-13b0ebf8f683" />

Prometheus

<img width="1916" height="1030" alt="image" src="https://github.com/user-attachments/assets/c0a8fdec-feb3-435c-be2b-d2690fffe741" />
