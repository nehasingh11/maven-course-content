# Resource: Azure Linux Virtual Machine
resource "azurerm_linux_virtual_machine" "web_linuxvm" {
  name = "${local.resource_name_prefix}-Tomcat-linuxvm"
  #computer_name = "web-linux-vm" # Hostname of the VM (Optional)
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  size                  = "Standard_DS1_v2"
  admin_username        = "azureuser"
  network_interface_ids = [azurerm_network_interface.web_linuxvm_nic.id]
  admin_ssh_key {
    username   = "azureuser"
    public_key = file("${path.module}/ssh-keys/terraform-azure.pub")
  }
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
  custom_data = filebase64("${path.module}/app-scripts/cloud-init-jenkins.sh")
  #custom_data = base64encode(local.webvm_custom_data)
}
