variable "subnet_route_table_associations" {
  description = <<EOT
Map of subnet_route_table_associations, attributes below
Required:
    - route_table_id
    - subnet_id
EOT

  type = map(object({
    route_table_id = string
    subnet_id      = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_subnet_route_table_association's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: route_table_id
  #   source:    [from routetables.ValidateRouteTableID] !ok
  # path: route_table_id
  #   source:    [from routetables.ValidateRouteTableID] err != nil
}

