resource "cloudflare_record" "localhost_v4" {
  zone_id = var.cloudflare_zone_id
  name    = "localhost"
  value   = "127.0.0.1"
  type    = "A"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "localhost_v6" {
  zone_id = var.cloudflare_zone_id
  name    = "localhost"
  value   = "::1"
  type    = "AAAA"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "magic" {
  zone_id = var.cloudflare_zone_id
  name    = "magic"
  value   = "Hacked"
  type    = "TXT"
  ttl     = 1
  proxied = false
}