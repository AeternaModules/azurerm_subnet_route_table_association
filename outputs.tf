output "subnet_route_table_associations" {
  description = "All subnet_route_table_association resources"
  value       = azurerm_subnet_route_table_association.subnet_route_table_associations
}
output "subnet_route_table_associations_route_table_id" {
  description = "List of route_table_id values across all subnet_route_table_associations"
  value       = [for k, v in azurerm_subnet_route_table_association.subnet_route_table_associations : v.route_table_id]
}
output "subnet_route_table_associations_subnet_id" {
  description = "List of subnet_id values across all subnet_route_table_associations"
  value       = [for k, v in azurerm_subnet_route_table_association.subnet_route_table_associations : v.subnet_id]
}

