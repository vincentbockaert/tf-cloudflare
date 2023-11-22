resource "cloudflare_zone" "this" {
  # note: records are managed through a different tool called OctoDNS, see https://github.com/vincentbockaert/dns
  for_each   = var.zones
  account_id = var.cloudflare_account_id
  zone       = each.key
}