resource "cloudru_evolution_security_group" "security_group" {
  name = var.security_group_name

  availability_zone {
    id = local.az.id
  }

  rules {
    direction        = "egress"
    ether_type       = "IPv4"
    ip_protocol      = "any"
    port_range       = "any"
    remote_ip_prefix = "0.0.0.0/0"
  }

  rules {
    direction        = "ingress"
    ether_type       = "IPv4"
    ip_protocol      = "tcp"
    port_range       = "22:22"
    remote_ip_prefix = "0.0.0.0/0"
    description      = "SSH"
  }

  rules {
    direction        = "ingress"
    ether_type       = "IPv4"
    ip_protocol      = "tcp"
    port_range       = "80:80"
    remote_ip_prefix = "0.0.0.0/0"
    description      = "HTTP"
  }
}