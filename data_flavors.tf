data "cloudru_evolution_flavor" "flavors" {}

locals {
  flavor_list =  [
    for s in data.cloudru_evolution_flavor.flavors.resources :
      s if s.name == var.flavor_name
  ]
  flavor = local.flavor_list.0
}
