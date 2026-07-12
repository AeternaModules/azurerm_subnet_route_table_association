output "subnet_route_table_associations_id" {
  description = "Map of id values across all subnet_route_table_associations, keyed the same as var.subnet_route_table_associations"
  value       = { for k, v in azurerm_subnet_route_table_association.subnet_route_table_associations : k => v.id }
}
output "subnet_route_table_associations_route_table_id" {
  description = "Map of route_table_id values across all subnet_route_table_associations, keyed the same as var.subnet_route_table_associations"
  value       = { for k, v in azurerm_subnet_route_table_association.subnet_route_table_associations : k => v.route_table_id }
}
output "subnet_route_table_associations_subnet_id" {
  description = "Map of subnet_id values across all subnet_route_table_associations, keyed the same as var.subnet_route_table_associations"
  value       = { for k, v in azurerm_subnet_route_table_association.subnet_route_table_associations : k => v.subnet_id }
}

