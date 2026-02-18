# domino-labs-environments
Git Repo (Single Source of Truth)
├── Infrastructure (Terraform)
├── Compute Image (Docker)
├── IDE Config (VSCode as code)
├── Security Policies
└── CI/CD Pipelines

CI/CD
├── Terraform Plan & Apply
├── Docker Build
├── Security Scan (Trivy)
├── SBOM Generation
├── Image Signing (Cosign)
└── Registry Push (Immutable)

Cloud Infrastructure
├── VPC
├── Private Subnets
├── IAM Roles (Least Privilege)
├── NFS (EFS)
├── Secrets Manager
├── Container Registry
└── ADLS / Databricks Peering

Domino
├── Pulls immutable image
├── Injects IAM role
├── Mounts NFS automatically
└── Runs pre-configured IDE
