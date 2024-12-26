 provider "azurerm" {
  features {}
   subscription_id= "your-subscription-id"
}

resource "azurerm_resource_group" "rg" {
  name     = "static-website-rg"
  location = "East US"
}

resource "azurerm_storage_account" "storage" {
  name                     = "mywebsite673543"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_nested_items_to_be_public = true
}

# Define the static website settings
resource "azurerm_storage_account_static_website" "static_website" {
  storage_account_id   = azurerm_storage_account.storage.id
  index_document       = "index.html"
  error_404_document   = "404.html"
}

# Create the $web container explicitly
resource "azurerm_storage_container" "web_container" {
  name                  = "$web"
  storage_account_id    = azurerm_storage_account.storage.id
  container_access_type = "blob"
}

# Upload index.html
resource "azurerm_storage_blob" "index" {
  name                   = "index.html"
  storage_account_name = azurerm_storage_account.storage.name
  storage_container_name = azurerm_storage_container.web_container.name
  type                   = "Block"
  source                 = "${path.module}/index.html"
  content_type           = "text/html"
}

# Upload 404.html
resource "azurerm_storage_blob" "error" {
  name                   = "404.html"
  storage_account_name = azurerm_storage_account.storage.name
  storage_container_name = azurerm_storage_container.web_container.name
  type                   = "Block"
  source                 = "${path.module}/404.html"
  content_type           = "text/html"
}
