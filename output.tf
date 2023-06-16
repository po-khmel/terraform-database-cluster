output "vm_ips" {
  value = { for instance in openstack_compute_instance_v2.example : instance.name => instance.access_ip_v4 }
}
