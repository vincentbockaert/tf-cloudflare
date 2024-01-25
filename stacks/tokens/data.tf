data "cloudflare_api_token_permission_groups" "all" {}
data "hcloud_servers" "hcloud_k3s_nodes" {
    with_selector = "k3s" # i.e. with label key: "k3s"
}