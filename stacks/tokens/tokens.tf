# Token allowed to edit DNS entries
resource "cloudflare_api_token" "all_zones_dns_edit" {
  name = "all_zones_dns_edit"

  policy {
    permission_groups = [
      # https://developers.cloudflare.com/fundamentals/api/reference/permissions/#zone-permissions
      data.cloudflare_api_token_permission_groups.all.zone["DNS Read"],
      data.cloudflare_api_token_permission_groups.all.zone["DNS Write"],
    ]
    # all zones
    resources = {
      "com.cloudflare.api.account.zone.*" = "*"
    }
  }

  condition {
    request_ip {
      in = local.hcloud_k3s_nodes_addresses
    }
  }
}





