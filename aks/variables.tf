variable "name" {
  default = "dev"
}

variable "instance" {}

variable "location" {
  default = "centralus"
}

variable "k8s_version" {
  default = "1.8.7"
}

variable "vm_pool_name" {
  default = "default"
}

variable "vm_size" {
  default = "Standard_DS2_v2"
}

variable vm_os_disk_size {
  default = 60
}

variable "vm_count" {
  default = 3
}
