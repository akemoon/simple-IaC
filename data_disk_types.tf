data "cloudru_evolution_disk_type" "disk_types" {}

locals {
  disk_type_list = [
    for s in data.cloudru_evolution_disk_type.disk_types.resources :
      s if s.name == "SSD"
  ]
  
  disk_type = local.disk_type_list.0
}
