resource "cloudflare_zone" "this" {
  for_each   = var.zones
  account_id = var.cloudflare_account_id
  zone       = each.key
}

import {
  id = "da4ededf5601cd2297bf78305f0ee4cb"
  to = cloudflare_zone.this["schaakclublievegem.be"]
}


import {
  id = "93c9eef9c0b509ce821d1a3364042681"
  to = cloudflare_zone.this["vincentbockaert.xyz"]
}

import {
  id = "6e379f0f75bfb4587a70016ee2748742"
  to = cloudflare_zone.this["techheresy.com"]
}
