resource "cloudru_evolution_compute" "compute" {
  name      = var.host_name
  flavor_id = local.flavor.id

  availability_zone {
    name = var.availability_zone_name
  }

  image {
    name       = var.image_name
    host_name  = var.host_name
    user_name  = var.user_name
    public_key = var.pub_ssh_key
  }

  boot_disk {
    name = var.boot_disk_name
    size = var.boot_disk_size

    disk_type {
      id = local.disk_type.id
    }
  }

  network_interfaces {
    subnet {
      name = cloudru_evolution_subnet.subnet.name
    }

    security_groups {
      id = local.security_group.id
    }

    fip {
      id = cloudru_evolution_fip.fip.id
    }
  }
}
