variable "database_image" {
  type = map(any)
  default = {
    "name" = "RockyLinux-9 - GARR"
    "id"   = "1c88a8c6-f77d-495e-9eb0-98eff5f3d9cb"
  }
}

variable "private_network" {
  type = map(any)
  default = {
    name        = "elixir-VM-net"
    subnet_name = "elixir-VM-subnet"
    cidr4       = "192.168.208.0/22 "
  }
}

variable "public_network" {
  type = map(any)
  default = {
    "name" = "floating-ip"
  }
}

variable "flavors" {
  type = map(any)
  default = {
    "database" = "m1.medium"
    "replica"  = "m1.medium"
    "backup"   = "m1.medium"
  }
}

variable "public_key" {
  type = map(any)
  default = {
    name       = "db_cluster"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDEAEXE3T+ReOl9uT7RQBwa7oUM99IcHwoZ93XqhuNoDqqKcGt4n92Ko7tKEYO4s6vC864h3U6U/DYr4zEAHudvhTo0/Jd5IHzV/EnJW62Y+WhZ7vDQSqgQTXLrBZFOCaTpI3VjTHrqcNByBSFeRwlPWLYq+VpFANh0seW5EQYxifjku3sC/NJLBUGsKykMiXvB7XEFiQxbfmtF2WOjb3sj9gvHxxhZHma0hpJR5iHy64nuZQ5ROz8io7H9eSjpCYQWOl83z9nM6fGO5rBbq4hsjDR8DUMK8yriVcASgEdSvsOmF2SyAUS9BHqST0F+ypBKjRNH6sUK9kEWuSIGgl47 centos@pulsar-control-vm.garr.cloud.pa"
  }
}

variable "vm_names" {
  type    = list(string)
  default = ["database", "backup", "replica"]
}
