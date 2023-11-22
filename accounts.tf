resource "cloudflare_account" "primary" {
  name              = var.cloudflare_account_name
  enforce_twofactor = true
}