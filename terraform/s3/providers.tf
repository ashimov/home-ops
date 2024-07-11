terraform {
  required_providers {
    b2 = {
      source  = "Backblaze/b2"
      version = "0.8.12"
    }
    minio = {
      source  = "aminueza/minio"
      version = "2.3.2"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.37.0"
    }
    sops = {
      source  = "carlpett/sops"
      version = "1.0.0"
    }
    onepassword = {
      source  = "1Password/onepassword"
      version = "2.1.0"
    }
  }
}
