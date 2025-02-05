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

variable "host_name" {
  description = "Host name"
  default     = "compute"
}

variable "flavor_name" {
  description = "Name of Evolution VM flavor"
  default     = "lowcost10-2-4"
}

variable "availability_zone_name" {
  description = "Name of availability zone"
  default     = "ru.AZ-1"
}

variable "image_name" {
  description = "OS image name"
  default     = "ubuntu-22.04"
}

variable "user_name" {
  description = "Username on the host"
  default     = "user"
}

variable "pub_ssh_key" {
  description = "Public ssh key"
}

variable "boot_disk_name" {
  description = "Boot disk name"
  default     = "boot-disk"
}

variable "boot_disk_size" {
  description = "Boot disk size"
  default     = 10
}

variable "subnet_name" {
  description = "Subnet name"
}

variable "security_group_name" {
  description = "Security group name"
}
