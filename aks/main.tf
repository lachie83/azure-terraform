resource "azurerm_resource_group" "rg" {
  name     = "${var.name}-aks-${lower(var.location)}-${var.instance}"
  location = "${var.location}"
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "${azurerm_resource_group.rg.name}"
  location            = "${azurerm_resource_group.rg.location}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  kubernetes_version  = "${var.k8s_version}"
  dns_prefix          = "${azurerm_resource_group.rg.name}"

  linux_profile {
    admin_username = "${azurerm_resource_group.rg.name}"

    ssh_key {
      // Replace with path to valid SSH public key
      key_data = "${chomp(file("<PATH_TO_SSH_KEY>"))}"
    }
  }

  agent_pool_profile {
    name    = "${var.vm_pool_name}"
    count   = "${var.vm_count}"
    vm_size = "${var.vm_size}"
    os_type = "Linux"
  }

  service_principal {
    // Replace with path to valid SP ID and SP secret
    // example path that is currently in .gitignore
    client_id = "${chomp(file(".config/sp_id.txt"))}"
    client_secret = "${chomp(file(".config/sp_secret.txt"))}"
  }

  tags {
    Environment = "Dev"
  }
}
