
# 🚀 AWS CodePipeline Deployment using Terraform | Smartyy (Next.js App)

## 📌 Project Objective

Provision a complete CI/CD pipeline on AWS using **Terraform**, integrated with **GitHub**, **CodeBuild**, and **CodeDeploy**. The project deploys a production-ready **Next.js + TypeScript** application (Smartyy) to an **EC2 instance**. Also includes infrastructure testing using **Terratest**.

---

## 🛠️ Tech Stack & Tools

- **Infrastructure as Code (IaC)**: Terraform
- **CI/CD**: AWS CodePipeline
- **Build**: AWS CodeBuild
- **Deploy**: AWS CodeDeploy
- **Hosting**: EC2 (Ubuntu)
- **Source Control**: GitHub (via CodeStar)
- **Artifact Storage**: S3 Bucket
- **Infrastructure Testing**: Terratest (GoLang)
- **Runtime**: Node.js 18, PM2, Next.js

---

## 📦 Application Info

- **Name**: `Smartyy`
- **Framework**: Next.js with TypeScript
- **Build Command**: `npm install && npm run build`
- **Start Command**: `npm run start` (via PM2)
- **Deployment Script**: `appspec.yml` + shell scripts for CodeDeploy

---

## 🧱 Infrastructure Overview

```bash
.
├── main.tf
├── codebuild.tf
├── codedeploy.tf
├── pipeline.tf
├── iam.tf
├── variables.tf
├── outputs.tf
├── buildspec.yml
├── appspec.yml
├── scripts/
│   ├── install_dependencies.sh
│   ├── start_server.sh
│   └── stop_server.sh
└── terratest/
    └── main_test.go
```

---

## 🔐 IAM Roles Created

- `CodePipelineServiceRole`
- `CodeBuildServiceRole`
- `CodeDeployServiceRole`
- EC2 IAM role for CodeDeploy (instance profile)
- All with least-privilege policies

---

## 🚀 Pipeline Stages

1. **Source**
   - GitHub (via AWS CodeStar Connection)
   - Trigger on every `main` branch push

2. **Build**
   - Uses `buildspec.yml`
   - Installs dependencies, builds Next.js app, zips artifact
   - Stores output to S3

3. **Deploy**
   - AWS CodeDeploy with EC2 (in-place deployment)
   - Uses `appspec.yml` and lifecycle hooks to run deployment scripts

---

## 🧪 Terratest (Infrastructure Testing)

- Validates:
  - S3 Bucket existence
  - CodePipeline creation
  - IAM roles/policies attached
- File: `terratest/main_test.go`
- Run using: `go test`

---

## 🖼️ Screenshots (Attach Below)
> You can upload these in the GitHub repo or your documentation:
- ✅ Terraform `apply` successful
- ✅ AWS Console - CodePipeline status
- ✅ CodeBuild build logs
- ✅ EC2 Instance running app
- ✅ S3 artifact bucket
- ✅ CodeDeploy deployment status
- ✅ Terratest test output

---

## 📂 Artifact Bucket Info

- S3 Bucket: `smartyy-artifact-bucket-<random-suffix>`
- Output Zip: `build-output.zip`

---

## 🌐 EC2 App URL

- Public IP: `http://<your-ec2-public-ip>:3000`  
  _(make sure security group allows port 3000)_

---

## ✅ Deployment Summary

| Component      | Status      |
|----------------|-------------|
| Terraform Infra| ✅ Created  |
| CodePipeline   | ✅ Working  |
| Build Stage    | ✅ Successful |
| Deploy Stage   | ✅ EC2 via CodeDeploy |
| App Live       | ✅ Smartyy running |
| Infra Tested   | ✅ Terratest Passed |

---

## 👨‍💻 Author

- **Name**: Jitesh
- **GitHub**: [Jitesh8260](https://github.com/Jitesh8260)
- **Project**: Part of AWS DevOps Assignment Submission
