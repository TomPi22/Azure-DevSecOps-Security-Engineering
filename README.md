# Azure-DevSecOps-Security-Engineering
A DevSecOps &amp; Cloud Security engineering portfolio focused on Azure. Showcasing Infrastructure as Code (Terraform), CI/CD security (GitHub Actions), Python automation, and IAM hardening to shift-left cloud defense.

<br>

# ☁️ Azure DevSecOps & Cloud Security Engineering

<br>

## 📑 Table of Contents
1. [🎯 Objective](#-objective)
2. [🗺️ Strategic Roadmap](#️-strategic-roadmap)
3. [🛠️ Tech Stack & Tools](#️-tech-stack--tools)
4. [🏗️ Phase 1: Infrastructure as Code (IaC) & Cloud Posture](#️-phase-1-infrastructure-as-code-iac--cloud-posture)
5. [🔐 Phase 2: Identity & Secret Management Automation](#-phase-2-identity--secret-management-automation)
6. [🚀 Phase 3: DevSecOps & CI/CD Security](#-phase-3-devsecops--cicd-security)
7. [🛡️ Phase 4: Compliance & Audit Operations](#️-phase-4-compliance--audit-operations)

---

## 🎯 Objective
This repository documents my hands-on projects and progression as a **Cloud Security Engineer**. The core objective is to design, automate, and deploy secure multicloud infrastructures (with a primary focus on Microsoft Azure), shifting security left by integrating automated testing, Infrastructure as Code (IaC), and Identity & Access Management (IAM) controls directly into CI/CD pipelines. This portfolio reflects a proactive approach to engineering security by design, reducing manual overhead through automation, and bridging the gap between Security, DevOps, and Infrastructure teams.

---

## 🗺️ Strategic Roadmap
This repository represents the engineering phase of my broader cybersecurity career progression:
*   ✅ **Phase I: IT Fundamentals & SysAdmin** (Completed - *IT_Support_HomeLab*)
*   ✅ **Phase II: Security Operations & Blue Team** (Completed - *Hybrid-SOC-BlueTeam-Ops*)
*   📍 **Phase III: Cloud Security & DevSecOps Engineering** (Current - *This Repository*)
*   ⏳ **Phase IV: Advanced Multi-Cloud Architecture** (Future - *AWS/GCP & Zero Trust*)

---

## 🛠️ Tech Stack & Tools
*   **Cloud Platform:** Microsoft Azure (VNets, NSGs, Storage Accounts, Key Vault, Defender for Cloud).
*   **Infrastructure as Code (IaC):** HashiCorp Terraform.
*   **DevSecOps & Version Control:** Git, GitHub Actions, Checkov, tfsec.
*   **Programming & Scripting:** Python, Bash, Azure CLI.
*   **Security Domains:** SAST/DAST, IAM Automation, Secret Management, Vulnerability Scanning, Cloud Security Posture Management (CSPM).

---

## 🏗️ Phase 1: Infrastructure as Code (IaC) & Cloud Posture

### Lab 1: Deploying a Secure Azure Infrastructure utilizing Terraform
**Scenario:** The engineering team requires a highly secure, scalable, and cost-effective architecture. Manual portal configurations lead to configuration drift and human error. As a Security Engineer, I authored Terraform scripts to programmatically deploy an Azure Virtual Network (VNet) with strict Network Security Groups (NSGs) and a securely configured Storage Account with public access explicitly disabled.

Furthermore, to lay the groundwork for secure secret management (Phase 2), I provisioned an **Azure Key Vault** directly via IaC. This vault was designed with **FinOps principles** in mind (utilizing the Standard tier and ephemeral soft-delete configurations for lab environments) to store database credentials safely, completely removing hardcoded secrets from the infrastructure.

*   **Action:** Developed `main.tf`, `variables.tf`, and `providers.tf` to implement least-privilege network rules, state management, and secure secret injection via code.
<img width="1095" height="635" alt="image" src="https://github.com/user-attachments/assets/b623c61f-e9d5-400e-b7bf-6b6b93d1914e" />
<img width="1913" height="1031" alt="image" src="https://github.com/user-attachments/assets/083d42c7-a1e1-4969-a1f0-cafd372c0352" />

<br>

*   **Skills Applied:** Infrastructure as Code (IaC), Terraform, Azure Networking (VNet/NSG), Secure Storage, Azure Key Vault Provisioning, Cloud Automation, FinOps Practices.

<br>

## 🔐 Phase 2: Identity & Secret Management Automation

### Lab 2: Automating IAM Audits & Secrets Management with Python
**Scenario:** Hardcoded credentials are a leading cause of cloud breaches. To mitigate this risk, I developed a Python automation script that interacts with the Azure CLI and Azure Key Vault to securely retrieve and manage secrets without exposing them in the source code. Additionally, the script performs an automated audit of IAM role assignments to detect over-privileged service principals.

*   **Action:** Utilized Python `azure-identity` and `azure-keyvault-secrets` libraries to automate the generation of daily IAM compliance reports.
<img width="1102" height="632" alt="image" src="https://github.com/user-attachments/assets/3b2dca84-f6e9-420e-b6b0-130258c9260d" />

<br>

*   **Skills Applied:** Python Programming, API Integration, IAM Auditing, Secret Management (Azure Key Vault), Automation Scripting, Principle of Least Privilege.

<br>

## 🚀 Phase 3: DevSecOps & CI/CD Security

### Lab 3: Building a Secure CI/CD Pipeline with GitHub Actions
**Scenario:** To support rapid development without compromising security, I engineered a DevSecOps pipeline using GitHub Actions. Every Pull Request (PR) automatically triggers a workflow that performs Static Application Security Testing (SAST) on the Python code and scans the Terraform files for misconfigurations before any infrastructure is deployed to Azure.
*   **Action:** Configured `.github/workflows/security-pipeline.yml` to block deployments containing high-severity vulnerabilities utilizing tools like Checkov and Bandit.

<br>

<img width="1913" height="1022" alt="image" src="https://github.com/user-attachments/assets/a39763a6-ffd7-40cc-9842-b0643ee7d2dc" />

*   **Skills Applied:** DevSecOps, CI/CD Pipelines, GitHub Actions, SAST Tools (Checkov/Bandit), Version Control (Git), Shift-Left Security.

<br>

## 🛡️ Phase 4: Compliance & Audit Operations

### Lab 4: Vulnerability Scanning & Cloud Compliance Assessment
**Scenario:** To meet internal auditing and compliance requirements, the environment was onboarded to Microsoft Defender for Cloud. I automated the process of extracting vulnerability scan results and aligning the Azure resources against compliance benchmarks (CIS Controls).

*   **Action:** Evaluated security recommendations, executed remediations, and generated compliance status reports for executive stakeholders and global security partners.

<br>

<img width="1907" height="1023" alt="image" src="https://github.com/user-attachments/assets/5d60851d-2e5f-4df6-863f-6f63a5c216f3" />
<img width="1913" height="1026" alt="image" src="https://github.com/user-attachments/assets/4571e3c5-7fb9-470a-a785-3b732c8ea3a6" />

<br>

*   **Skills Applied:** Cloud Security Posture Management (CSPM), Vulnerability Scanning, Compliance & Auditing (CIS Controls), Microsoft Defender for Cloud, Executive Reporting.

---
*Prepared and executed to demonstrate production-grade capabilities for Cloud Security Engineering roles.*
