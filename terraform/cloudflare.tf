variable "domain" {
  default = "example.com"
}

resource "cloudflare_record" "www" {
  zone_id = var.cloudflare_zone_id
  name    = "www"
  value   = "example.com"
  type    = "A"
  proxied = true
}