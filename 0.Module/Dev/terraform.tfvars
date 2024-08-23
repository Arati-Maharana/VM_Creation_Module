rg = {
  rg1 = {
    name     = "aratirg"
    location = "Central India"
  }
}

#assigning value for NSG 
nsg = {
  nsg1 = {
    name = "arati-nsg"
    security_rule = {
      priority          = 100
     destination_port_range   = "22"
    }
    nsg2 = {
      name = "arati-nsg"
      security_rule = {
        priority          = 101
        destination_port_range     = "80"
      }


    }
  }
}

#assigning value for VNET
vnet = {
  vnet1 = {
    name          = "arati-vnet"
    address_space = ["10.0.0.0/16"]
  }
}


#assigning value for Subnet
subnet = {
  subnet1 = {
    name             = "arati-subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet2 = {
    name             = "arati-subnet2"
    address_prefixes = ["10.0.2.0/24"]
  }

  subnet3 = {
    name             = "AzureBastionSubnet"
    address_prefixes = ["10.0.3.0/24"]
  }
}


#assigning value for Public IP
pip = {
  pip1 = {
    name = "arati-bastion-pip"
  }
  pip2 = {
    name = "arati-loadbalancer-pip"
  }
}

#assigning value for NIC
nic = {
  nic1 = {
    name  = "arati-nic1"
    sname = "arati-subnet1"

  }
  nic2 = {
    name  = "arati-nic2"
    sname = "arati-subnet2"

  }
}

#assigning value for VM
vm = {
  vm1 = {
    name    = "arati-vm1"
    nicname = "arati-nic1"
  }
  vm2 = {
    name    = "arati-vm2"
    nicname = "arati-nic2"
  }
}

#assigning value for Bastion
bastion = {
  bastion1 = {
    name = "arati-bastion"
  }
}
