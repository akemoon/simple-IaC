resource "cloudru_evolution_fip" "fip" {
  name = var.fip_name

  availability_zone {
    id = local.az.id
  }
}
