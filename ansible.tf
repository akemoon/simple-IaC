resource "null_resource" "run_ansible" {
  depends_on = [cloudru_evolution_compute.compute]

  provisioner "local-exec" {
    command = <<-EOT
      bash -c "until nc -zv ${cloudru_evolution_fip.fip.ip_address} 22; do echo Waiting for SSH...; sleep 5; done"
    EOT
  }

  provisioner "local-exec" {
    command = <<-EOT
      ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ${var.user_name} -i '${cloudru_evolution_fip.fip.ip_address},' --private-key ${var.private_ssh_key_path} ./ansible/playbook.yml
    EOT
  }
}