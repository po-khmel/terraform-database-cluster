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
    "name" = "elixir-network"
  }
}

variable "public_network" {
  type = map(any)
  default = {
    "name" = "externalNetwork"
  }
}

variable "flavors" {
  type = map(any)
  default = {
    "database" = "fl.ada.s"
    "replica"  = "fl.ada.s"
    "backup"   = "fl.ada.s"
  }
}

# add here your newly generated public key
variable "public_key" {
  type = map(any)
  default = {
    name       = "db_cluster"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCv0/H8VaGgmIaOZ04HYKZKssZARXf2QPB6JGmlbiFpwA7MxakuBkPzm9t+UsGd6vWZ+LDQY+MdZNGt2Nm0e/0TJO9Ilxc/nANPYqR5rzOBFUkXlKw57zxmXVr6Aamrl5ePS13zUNeM34PKG78CA92quG0YNjYeCZon4UiyAfXHzdcvTcwn2lbRsaxMTDxlO8r7ZKf9rDuyjf4Q98hVqDjN57+3ZIoU4o9PBJg+8TpiCe5igMtM53WmbhUk1EuiZoB6Hnc+OpaoPhFAjcxANVw4CMII5YzxN9YCdk9jAPXE4WEb1vnSm9HWoOuZiJoOgb2ngeTX5maioUP7ugVJyE7N9iaFMCz4P7cjfEKHu01EgP8H7Ts65DqcX4Xu8pUYbCPBHzvUFcHDngV/mG2Fabk4MOrdoGC2DXKKE+LRVjEDlaXMVN7kc3qKP9/4euna6gBoIp530MgRitIGmlPHyMKAeRfIXz2e7FONCUSzRHp4deo127fzl79hVOFUacnEbg8= pokhmel@master"
  }
}

variable "vm_names" {
  type    = list(string)
  default = ["database", "backup", "replica"]
}
