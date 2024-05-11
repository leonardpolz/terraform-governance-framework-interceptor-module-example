output "settings" {
  value = {
    global_settings = local.global_settings
    resource_settings = {
      "Microsoft.Resources/resourceGroups"                  = local.resource_group_settings
      "Microsoft.Network/virtualNetworks"                   = local.virtual_network_settings
      "Microsoft.Network/virtualNetworks/subnets"           = local.virtual_network_subnet_settings
      "Microsoft.Network/virtualNetworks/networkInterfaces" = local.virtual_network_network_interface_settings
      "Microsoft.Network/networkSecurityGroups"             = local.network_security_group_settings
      "Microsoft.Network/privateDnsZones"                   = local.private_dns_zone_settings
      "Microsoft.Network/privateEndpoints"                  = local.private_endpoint_settings
      "Microsoft.Network/routeTables"                       = local.route_table_settings
      "Microsoft.Sql/managedInstances"                      = local.mssql_managed_instance_settings
    }
  }
}
