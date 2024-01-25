terraform {
  required_version = "~> 1.6.2"

  backend "gcs" {
    bucket = "terraform-state-2b8908ba"
    prefix = "tf-cloudflare/stacks/tokens"
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.19.0"
    }
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.44.1"
    }
  }
}

provider "cloudflare" {
  # Configuration options
}


provider "hcloud" {}