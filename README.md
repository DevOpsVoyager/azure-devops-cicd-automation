# azure-devops-cicd-automation
Azure DevOps CI/CD automation Project

# Project Goal
To create an automated CI/CD pipeline that:
CI Pipeline: Automatically runs tests, performs code quality checks, and builds Docker containers when code is pushed to GitHub.
CD Pipeline: Deploys the application to a Kubernetes cluster using Terraform after successful CI completion.

# Tools Overview
Git: Version control system for managing code.
GitHub: A platform for hosting Git repositories.
GitHub Actions: Automates workflows (e.g., CI/CD) triggered by GitHub events (like code push).
Terraform: Infrastructure as Code (IaC) tool to provision and manage cloud infrastructure.
TestProject: Open-source tool for test automation.
SonarQube: Static code analysis tool for code quality and security.
Docker: Tool for creating and managing containers.
Kubernetes: Orchestration tool for managing containerized applications.
