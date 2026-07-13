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
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

