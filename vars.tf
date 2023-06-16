variable "database_image" {
  type = map(any)
  default = {
    "name" = "rocky 9 GA-test"
    "id"   = "296dc930-10ee-47c5-9d5f-2014d4fb8bbf"
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
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDEgz4Q2Iy6rwmn2ol7gtRN7tcMyk7E8Q3Grrlyf+ck/E6Ik7GxIGnnAhBvlOF9drbuy7tUI3BpDl4+PHtL0ls3x0+GO/MOfb/YB+aww9C7n1TaXIsMoYYegxNRen+3Mnvze2CGFibjRcDiG+oy3X9ijkItF+NByl/fidzd8NRi49jHr3/LVJ1SR2uo3HFELlkaW7vWVw/u/QcApYSkm00VvUroafBgMlZr821/d076fqXDJMtRTf1Oggt7+k6jzTmQmKspEBh8zB29YAcQa24VgTLJ5mYyRJX+kqJE/Madoph2+obNmxm6CpmCjm9IuxigAD8yH/1pcwy2Yz8Bq61D Generated-by-Nova"
  }
}

variable "vm_names" {
  type    = list(string)
  default = ["database", "backup", "replica"]
}
