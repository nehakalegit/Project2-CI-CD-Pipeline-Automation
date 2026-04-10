## 🚀 CI/CD Pipeline Automation using Jenkins, Terraform & Ansible on AWS

### 📌 Project Overview

This project demonstrates an end-to-end **CI/CD pipeline** that automates infrastructure provisioning and application deployment on AWS using:

* **Terraform** → Infrastructure provisioning (EC2)
* **Jenkins** → CI/CD orchestration
* **Ansible** → Configuration management & deployment
* **Nginx** → Hosting static website

---

## 🏗️ Architecture

```
Jenkins → Terraform → AWS EC2 → Ansible → Nginx → Browser
```

---

## ⚙️ Tools & Technologies

* AWS (EC2)
* Terraform
* Jenkins
* Ansible
* Git & GitHub
* Linux (Amazon Linux)

---

## 🔄 CI/CD Pipeline Flow

1. Jenkins triggers the pipeline.
2. Terraform initializes and provisions an EC2 instance.
3. Public IP is fetched dynamically using Terraform output.
4. Jenkins dynamically creates the Ansible inventory file.
5. Pipeline waits for EC2 instance to initialize.
6. Ansible connects to EC2 and installs Nginx.
7. Static website is deployed to `/usr/share/nginx/html`.
8. Application is accessible via EC2 Public IP.

---

## 📂 Project Structure

```
ci-cd-pipeline-project/
│
├── Jenkinsfile
├── terraform/
│   └── main.tf
├── ansible/
│   └── deploy.yml
├── app/
│   └── index.html
```

---

## 🌐 Output

After successful pipeline execution:

👉 Open in browser:

```
http://<EC2-PUBLIC-IP>
```

You will see the deployed static website 🎉

---

## ⚡ Key Features

* ✅ End-to-end CI/CD automation
* ✅ Infrastructure as Code (Terraform)
* ✅ Configuration management (Ansible)
* ✅ **Dynamic inventory generation using Jenkins**
* ✅ Automated EC2 provisioning & deployment
* ✅ Real-time public IP handling

---

## ⚠️ Challenges Faced

* ❗ EC2 instance not ready immediately after creation
* ❗ SSH connection failures due to instance initialization delay
* ❗ `yum lock` issue while installing packages
* ❗ Nginx package not available initially (required repo/update)
* ❗ Static inventory confusion vs dynamic inventory
* ❗ Security group missing HTTP (port 80) access

---

## 🛠️ Solutions Implemented

* ✔ Added wait time in Jenkins pipeline
* ✔ Added sleep & retry logic in Ansible
* ✔ Ensured proper package installation using yum update
* ✔ Dynamically generated inventory file using EC2 public IP
* ✔ Updated security group to allow port 80

---

## 📌 Future Enhancements

* 🔹 Use Ansible dynamic inventory plugin (AWS EC2)
* 🔹 Add Load Balancer for high availability
* 🔹 Integrate Docker & Kubernetes
* 🔹 Add monitoring (CloudWatch / Prometheus)

---

## 🙌 Conclusion

This project showcases a complete DevOps workflow by integrating provisioning, configuration, and deployment tools to achieve full automation of application delivery on AWS.

---

