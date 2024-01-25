output "all_zones_dns_edit" {
  description = "token for all_zones_dns_edit"
  sensitive = true # printed as <sensitive> in the console, to see it use `terraform output -raw all_zones_dns_edit`
  value       = cloudflare_api_token.all_zones_dns_edit.value
}

output "ipv4_addresses" {
  description = "ipv4 addresses"
  value       = local.hcloud_k3s_nodes_ipv4_addresses
}

output "ipv6_addresses" {
  description = "ipv6 addresses"
  value       = local.hcloud_k3s_nodes_ipv6_addresses
}

output "addresses" {
  description = "addresses"
  value       = local.hcloud_k3s_nodes_addresses
}