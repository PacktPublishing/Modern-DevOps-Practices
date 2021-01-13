output "control_node_ip_addr" {
  value = azurerm_public_ip.control_node_publicip.ip_address
}

output "web_ip_addr" {
  value = azurerm_public_ip.web_publicip.ip_address
}
