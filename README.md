🚀 WordPress Deployment on AWS EC2 Instance using Terraform

## 📌 Project Overview
This project demonstrates deploying a **WordPress application** on AWS using **Terraform (Infrastructure as Code)**.
The infrastructure provisions an EC2 instance running Apache and WordPress, connected to a **MariaDB database (RDS)** deployed in private subnets.

This project follows **DevOps best practices** such as automation, security, and reproducibility.

---

## 🛠 Tools & Technologies
- Terraform
- AWS (EC2, VPC, RDS, Security Groups, Route Tables)
- Apache Web Server
- WordPress
- MariaDB
- Linux (Amazon Linux)

---

## 🏗 Architecture
- Custom VPC
- Public Subnet → EC2 (Apache + WordPress)
- Private Subnets → RDS (MariaDB)
- Internet Gateway & Route Tables
- Security Groups (SSH, HTTP, MySQL)
- SSH Key Pair managed via Terraform
- User Data script for automation

---

## ⚙️ What Terraform Creates
- VPC with public & private subnets
- Internet Gateway and route table associations
- EC2 instance with Apache & WordPress
- RDS MariaDB instance in private subnet
- Security groups with controlled access
- Key pair for secure SSH access
- ##Screenshots

<img width="1370" height="602" alt="image" src="https://github.com/user-attachments/assets/4a9c6a4f-4236-426b-8523-1a7be6bb16f3" />

<img width="1919" height="819" alt="image" src="https://github.com/user-attachments/assets/c10a8685-9fc7-40c3-bb8a-157014bd515e" />

<img width="1919" height="301" alt="image" src="https://github.com/user-attachments/assets/53604550-58a9-469e-b741-3133dac823b8" />

<img width="1919" height="849" alt="image" src="https://github.com/user-attachments/assets/0b997587-d52d-469d-a404-23fa10da697e" />

![wrd](https://github.com/user-attachments/assets/7b88bf7d-a8d4-499d-beec-b133bfbd5f46)

<img width="1533" height="584" alt="s1" src="https://github.com/user-attachments/assets/3440264c-861a-4263-9340-fc98f4d90c0a" />

![ss2](https://github.com/user-attachments/assets/4fd853d3-9252-42b6-a1a3-6bb6b6e459bb)

![ss3](https://github.com/user-attachments/assets/34addc94-63bc-4bf1-95cd-bd17a716a7c1)

![ss4](https://github.com/user-attachments/assets/6cd5250f-f054-42a1-9758-b718e6bef609)

---
## 🚀 How to Deploy
```bash
#terraform init
#terraform plan
#terraform apply

🧹 Cleanup
#terraform destroy

🎯 Key Learnings

Infrastructure as Code (IaC) using Terraform

AWS networking fundamentals

Secure handling of credentials (no hardcoded secrets)

Dependency management and real-world troubleshooting

End-to-end DevOps deployment workflow









