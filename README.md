# Project2-CI-CD-Pipeline-Automation
# 🚀 CI/CD Pipeline Automation Project

## 📌 Overview
This project demonstrates a simple CI/CD pipeline using Jenkins, Terraform, and Ansible to deploy a static web application on AWS.

## 🛠️ Tech Stack
- Jenkins
- Terraform
- Ansible
- AWS EC2
- Nginx

## ⚙️ Workflow

1. Developer pushes code to GitHub
2. Jenkins triggers pipeline
3. Application files are verified
4. Terraform provisions AWS EC2 instance
5. Ansible installs Nginx and deploys the application
6. Application is accessible via EC2 Public IP

## 📂 Project Structure

- Jenkinsfile → Pipeline automation
- Terraform → Infrastructure provisioning
- Ansible → Configuration management
- App → Static HTML application

## 🚀 Output

After successful execution:
- EC2 instance is created
- Nginx server is installed
- Static website is deployed

Open EC2 Public IP in browser:
"CI/CD Pipeline Working Successfully!"

## 📚 Learning Outcome

- CI/CD pipeline creation using Jenkins
- Infrastructure provisioning using Terraform
- Server configuration using Ansible
- End-to-end deployment automation
