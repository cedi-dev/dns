resource "cloudflare_record" "dmarc" {
  zone_id = var.cloudflare_zone_id
  name    = "_github-challenge-cedi-dev-org"
  value   = "59596d90cb"
  type    = "TXT"
  ttl     = 1
  proxied = false
}