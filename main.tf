terraform {
  required_version = ">= 1.0.9"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }

  backend "remote" {
    organization = "cedi"

    workspaces {
      name = "dns-cedi-dev"
    }
  }
}
