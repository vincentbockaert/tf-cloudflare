resource "cloudflare_account" "primary" {
  name              = var.cloudflare_account_name
  enforce_twofactor = true
}


import {
  id = var.cloudflare_account_id
  to = cloudflare_account.primary
}

# terraform import cloudflare_account.example <account_id>