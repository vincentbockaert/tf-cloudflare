locals {
    hcloud_k3s_nodes_ipv4_addresses = [for server in data.hcloud_servers.hcloud_k3s_nodes.servers : "${server.ipv4_address}/32"]
    hcloud_k3s_nodes_ipv6_addresses = [for server in data.hcloud_servers.hcloud_k3s_nodes.servers : "${server.ipv6_address}/128"]
    hcloud_k3s_nodes_addresses = concat(local.hcloud_k3s_nodes_ipv4_addresses, local.hcloud_k3s_nodes_ipv6_addresses)
}