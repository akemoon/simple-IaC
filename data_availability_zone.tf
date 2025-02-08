data "cloudru_evolution_availability_zone" "azs" {}

locals {
  az_list = [
    for s in data.cloudru_evolution_availability_zone.azs.resources :
      s if s.name == var.availability_zone_name
  ]
  az = local.az_list.0
}
