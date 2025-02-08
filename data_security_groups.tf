data "cloudru_evolution_security_group" "security_groups" {}

locals {
  security_group_list = [
    for s in data.cloudru_evolution_security_group.security_groups.resources : 
      s if s.name == var.security_group_name
  ]
  security_group = local.security_group_list.0
}