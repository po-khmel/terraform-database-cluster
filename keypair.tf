resource "openstack_compute_keypair_v2" "database_cluster" {
  name       = var.public_key.name
  public_key = var.public_key.public_key
}

