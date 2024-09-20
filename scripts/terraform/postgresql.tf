resource "azurerm_postgresql_flexible_server" "apsql" {
  name                          = "s224021028apdb"
  resource_group_name           = azurerm_resource_group.arg.name
  location                      = azurerm_resource_group.arg.location
  version                       = "16"
  sku_name                      = "B_Standard_B1ms"
  storage_mb                    = 32768
  storage_tier                  = "P4"
  administrator_login           = var.apsql_username
  administrator_password        = var.apsql_password
  public_network_access_enabled = true
  auto_grow_enabled             = false
  backup_retention_days         = 7

  authentication {
    active_directory_auth_enabled = "false"
    password_auth_enabled         = "true"
  }
  lifecycle {
    ignore_changes = [storage_mb]
  }
}

resource "azurerm_postgresql_flexible_server_database" "apsqldb" {
    name = "postgres"
    server_id = azurerm_postgresql_flexible_server.apsql.id
    collation = "en_US.utf8"
    charset   = "utf8"
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_all_ips" {
  name                = "AllowAllIPs"
  server_id           = azurerm_postgresql_flexible_server.apsql.id
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "255.255.255.255"
}