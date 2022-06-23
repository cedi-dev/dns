resource "cloudflare_record" "blog" {
  zone_id = var.cloudflare_zone_id
  name    = "@"
  value   = "cedi-github-io.pages.dev"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "blog_www" {
  zone_id = var.cloudflare_zone_id
  name    = "www"
  value   = "cedi-github-io.pages.dev"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}