# Prereqs

* Service Principal for access to Azure API - see [provider](provider.tf)
* Service Principal for AKS cluster to access Azure API (default location is .config/sp_id.txt and .config/sp_secret.txt) configurable in [main.tf](main.tf)
* SSH Key for Kubernetes node VMs (~/.ssh/id_rsa.pub), configurable in [main.tf](main.tf)

# Variables

All variables are found in [variables.tf](variables.tf) and may be overridden at runtime with the `-var key=val` 

# Usage
Meet prereqs above
```
terraform init
terraform plan
terraform apply
```
