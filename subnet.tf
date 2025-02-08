resource "cloudru_evolution_subnet" "subnet" {
  name            = var.subnet_name
  subnet_address  = var.subnet_address
  default_gateway = var.gateway_address
  dns_servers     = var.dns_address
  default         = var.default_subnet

  routed_network = true

  availability_zone {
    # Id set by default for the zone name specified in variables.tf
    id = local.az.id
  }
}