resource "cloudflare_zone" "this" {
  for_each   = var.zones
  account_id = var.cloudflare_account_id
  zone       = each.key
}