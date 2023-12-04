resource "esxi_guest" "vm" {
  guest_name          = var.guest_name
  boot_firmware       = var.boot_firmware
  disk_store          = var.disk_store
  memsize             = var.memsize
  numvcpus            = var.numvcpus
  resource_pool_name  = var.resource_pool_name
  virthwver           = var.virthwver

  virtual_disks {
    slot = var.virtual_disk_slot
    virtual_disk_id = var.virtual_disk_id
  }

  network_interfaces {
    virtual_network = var.virtual_network
    nic_type        = var.nic_type
  }

  notes = var.notes
}