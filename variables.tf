# -----------------------
# Common vars
# -----------------------

variable "project_id" {
  description = "Cloudru project id"
}

variable "cloudru_key_id" {
  description = "ID of Cloudru service account key"
  sensitive   = true
}

variable "cloudru_key_secret" {
  description = "Secret of Cloudru service account key"
  sensitive   = true
}

# -----------------------
# Subnet vars
# -----------------------

variable "subnet_name" {
  default = "default_subnet"
}

variable "subnet_address" {
  default = "192.168.0.0/24"
}

variable "gateway_address" {
  default = "192.168.0.1"
}

variable "dns_address" {
  default = ["8.8.8.8"]
}

variable "default_subnet" {
  default = true
}

variable "availability_zone_name" {
  default = "ru.AZ-1"
}

# -----------------------
# Floating IP vars
# -----------------------

variable "fip_name" {
  default = "default_fip"
}

# -----------------------
# Security group vars
# -----------------------

variable "security_group_name" {
  default = "default_sg"
}

# -----------------------
# Compute vars
# -----------------------

variable "host_name" {
  default = "compute1"
}

variable "flavor_name" {
  description = "Name of Evolution VM config type"
  default     = "lowcost10-2-4"
}

variable "image_name" {
  default = "ubuntu-22.04"
}

variable "user_name" {
  default = "user1"
}

variable "public_ssh_key" {}

variable "boot_disk_name" {
  default = "boot-disk"
}

variable "boot_disk_size" {
  default = 10
}

# -----------------------
# Ansible vars
# -----------------------

variable "private_ssh_key_path" {}