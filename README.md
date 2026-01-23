devops-assessment
A complete end-to-end DevOps assignment implementing:

~ Dockerized Django (Backend)
~ Dockerized React + Vite (Frontend)
~ Orchestrated using Docker Compose
~ Automated CI/CD using GitHub Actions
~ Optional Deployment on Cloud / Local VM
~ Optional IaC provisioning using Terraform

📦 Project Structure
.
├── backend/          → Django API (Dockerized)
├── frontend/         → React + Vite App (Dockerized)
├── docker-compose.yml
├── .github/workflows → CI/CD pipeline
├── terraform/        → Bonus IaC (VM + Security Group)
└── README.md

🚀 Features

~ Multi-stage Docker builds (optimized small images)
~ Runs as non-root inside containers
~ Environment variable support (API_URL, DEBUG)
~ Automatic Docker image build & push
~ Automatic deployment via SSH
~ Fully documented setup & troubleshooting

🛠 Tech Stack
Layer	         -   Technology
Frontend	     -   React, Vite, TypeScript
Backend	         -   Django 6.0 (REST API)
Containers	     -   Docker, Docker Compose
CI/CD	         -   GitHub Actions
Deployment	     -   Local VM / Cloud VM
IaC (Bonus)	     -   Terraform


🔗 Deployment Link

(Add after you deploy)

https://your-deployed-url.com

![alt text](<Screenshot 2026-01-23 171620.png>)

📄 Documentation

See DEVOPS.md for:

~ Local setup guide
~ Production deployment guide
~ CI/CD details
~ Troubleshooting logs