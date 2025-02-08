terraform {
  required_providers {
    cloudru = {
      source  = "cloud.ru/cloudru/cloud"
      version = "1.0.0"
    }
  }
}

provider "cloudru" {
  iam_endpoint       = "api.iam.sbercloud.ru:443"
  evolution_endpoint = "https://compute.api.cloud.ru"

  project_id         = var.project_id
  auth_key_id        = var.cloudru_key_id
  auth_secret        = var.cloudru_key_secret
}
