resource "openstack_networking_secgroup_v2" "private-db" {
  name        = "private-database"
  description = "[tf] Allow PostgreSQL connection"
}

resource "openstack_networking_secgroup_rule_v2" "private-db_rule1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "5432"
  port_range_max    = "5432"
  security_group_id = openstack_networking_secgroup_v2.public-ssh.id
}

resource "openstack_networking_secgroup_rule_v2" "private-db_rule2" {
  direction         = "ingress"
  ethertype         = "IPv6"
  protocol          = "tcp"
  port_range_min    = "5432"
  port_range_max    = "5432"
  security_group_id = openstack_networking_secgroup_v2.public-ssh.id
}
