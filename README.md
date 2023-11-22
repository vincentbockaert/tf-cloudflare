# tf-cloudflare

My Cloudflare account resources in terraform (WIP)

## local run

Prerequisites: 
- gcloud cli
    - needed for remote state
- 1password-cli
    - needed for fetching credentials

```bash
op run --env-file .\.env -- terraform init
op run --env-file .\.env -- terraform workspace select prod # currently only a prod
op run --env-file .\.env -- terraform apply
```