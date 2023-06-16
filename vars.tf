variable "database_image" {
  type = map(any)
  default = {
    "name" = "Ubuntu Server 20.04 LTS (Focal Fossa)"
    "id"   = "0f22f335-8175-4e68-b730-44b8d2c1973d"
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
    name   = "db_cluster"
    pubkey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDEgz4Q2Iy6rwmn2ol7gtRN7tcMyk7E8Q3Grrlyf+ck/E6Ik7GxIGnnAhBvlOF9drbuy7tUI3BpDl4+PHtL0ls3x0+GO/MOfb/YB+aww9C7n1TaXIsMoYYegxNRen+3Mnvze2CGFibjRcDiG+oy3X9ijkItF+NByl/fidzd8NRi49jHr3/LVJ1SR2uo3HFELlkaW7vWVw/u/QcApYSkm00VvUroafBgMlZr821/d076fqXDJMtRTf1Oggt7+k6jzTmQmKspEBh8zB29YAcQa24VgTLJ5mYyRJX+kqJE/Madoph2+obNmxm6CpmCjm9IuxigAD8yH/1pcwy2Yz8Bq61D Generated-by-Nova"
  }
}

variable "vm_names" {
  type    = list(string)
  default = ["database", "backup", "replica"]
}
