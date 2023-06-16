resource "openstack_compute_instance_v2" "instances" {
  count           = length(var.vm_names)
  name            = "usegalaxy-it.${var.vm_names[count.index]}"
  image_name      = var.database_image.name
  flavor_name     = var.flavors.database
  key_pair        = openstack_compute_keypair_v2.database_cluster.name
  security_groups = ["public-ssh", "private-db"]

  network {
    name = var.private_network.name
  }
}
