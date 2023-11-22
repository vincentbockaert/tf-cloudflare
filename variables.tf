variable "cloudflare_account_id" {
  type        = string
  description = "The ID of the Cloudflare account to use"
}

variable "cloudflare_account_name" {
  type        = string
  description = "The name of the Cloudflare account to use"
}

variable "zones" {
  type        = set(string)
  description = "The zones to manage"
}