resource "cloudflare_record" "k8s_ingress_v4" {
  zone_id = var.cloudflare_zone_id
  name    = "*"
  value   = "167.233.13.49"
  type    = "A"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "k8s_ingress_v6" {
  zone_id = var.cloudflare_zone_id
  name    = "*"
  value   = "2a01:4f8:1c1d:7e4::1"
  type    = "AAAA"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "k8s_dash" {
  zone_id = var.cloudflare_zone_id
  name    = "dash"
  value   = "cedi-dev-github-io.pages.dev"
  type    = "CNAME"
  ttl     = 1
  proxied = false
}
