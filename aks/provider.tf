/* Details on howto create SP here
  https://www.terraform.io/docs/providers/azurerm/authenticating_via_service_principal.html
  Can also be exported ENVVARS - ARM_SUBSCRIPTION_ID, ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_TENANT_ID
  https://www.terraform.io/docs/providers/azurerm/
*/

provider "azurerm" {
  subscription_id = "<SP_ID>"
  client_id       = "<CLIENT_ID>"
  client_secret   = "<CLIENT_SECRET>"
  tenant_id       = "<TENANT_ID>"
}
