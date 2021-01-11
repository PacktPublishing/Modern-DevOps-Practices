output "vm_ip_addr" {
  value = azurerm_network_interface.main.private_ip_address
}
