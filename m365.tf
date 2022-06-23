resource "cloudflare_record" "SPF" {
  zone_id = var.cloudflare_zone_id
  name    = "@"
  value   = "v=spf1 include:spf.protection.outlook.com -all"
  type    = "TXT"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "ms_verification" {
  zone_id = var.cloudflare_zone_id
  name    = "@"
  value   = "MS=ms38038929"
  type    = "TXT"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "dmarc" {
  zone_id = var.cloudflare_zone_id
  name    = "@"
  value   = "v=DMARC1; p=quarantine"
  type    = "TXT"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "slector1_domainkey" {
  zone_id = var.cloudflare_zone_id
  name    = "selector1._domainkey"
  value   = "selector1-cedi-dev._domainkey.cedidev.onmicrosoft.com"
  type    = "CNAME"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "slector2_domainkey" {
  zone_id = var.cloudflare_zone_id
  name    = "selector2._domainkey"
  value   = "selector2-cedi-dev._domainkey.cedidev.onmicrosoft.com"
  type    = "CNAME"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "enterpriseenrollment" {
  zone_id = var.cloudflare_zone_id
  name    = "enterpriseenrollment"
  value   = "enterpriseenrollment.manage.microsoft.com"
  type    = "CNAME"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "autodiscover" {
  zone_id = var.cloudflare_zone_id
  name    = "autodiscover"
  value   = "autodiscover.outlook.com"
  type    = "CNAME"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "enterpriseregistration" {
  zone_id = var.cloudflare_zone_id
  name    = "enterpriseregistration"
  value   = "enterpriseregistration.windows.net"
  type    = "CNAME"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "MX" {
  zone_id  = var.cloudflare_zone_id
  name     = "@"
  value    = "cedi-dev.mail.protection.outlook.com"
  priority = 0
  type     = "MX"
  ttl      = 1
  proxied  = false
}
