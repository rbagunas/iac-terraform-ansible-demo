# ☁️ Infrastructure as Code: Terraform + Ansible

This project demonstrates how to provision infrastructure using **Terraform** and configure it using **Ansible** — a classic Infrastructure as Code (IaC) combo.

## 🔧 What It Does

- Provisions a **Linode VPS** using Terraform
- Installs a **LAMP stack** (Linux, Apache, MySQL, PHP) using Ansible

## 🧰 Tech Stack

- Terraform
- Ansible
- Linode (can be adapted to other cloud providers)

## 📂 Project Structure

```
/terraform
  └── main.tf
/ansible
  ├── inventory
  └── playbook.yml
```

## 🚀 Usage

### 1. Provision VPS with Terraform

```bash
cd terraform
terraform init
terraform apply
```

### 2. Configure with Ansible

Update `ansible/inventory` with your server IP:

```
[web]
123.45.67.89 ansible_user=root
```

Then run:

```bash
cd ansible
ansible-playbook -i inventory playbook.yml
```

---

This setup is modular and customizable for other stacks like **LEMP**, **Node.js**, etc.
