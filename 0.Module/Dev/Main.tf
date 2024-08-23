#Child module calling for RG
module "modrg" {
  source = "../../1.Resource_ Group"
  rg     = var.rg
}

#Child module calling for NSG
module "modnsg" {
  depends_on = [module.modrg]
  source     = "../../2.Network_Security_Group"
  nsg        = var.nsg
}

#Child module calling for Virtual Network
module "modvnet" {
  depends_on = [module.modrg, module.modnsg]
  source     = "../../3.Virtual_Network"
  vnet       = var.vnet
}

#Child module calling for Subnet
module "modsubnet" {
  depends_on = [module.modrg, module.modvnet]
  source     = "../../4.Subnet"
  subnet     = var.subnet
}

#Child module calling for Public IP
module "modpip" {
  depends_on = [module.modrg, module.modsubnet]
  source     = "../../5.Public_IP"
  pip        = var.pip
}

#Child module calling for NIC
module "modnic" {
  depends_on = [module.modsubnet, module.modrg]
  source     = "../../6.Network_Interface_Controller"
  nic        = var.nic
}

#Child module calling for Virtual Machine
module "modvm" {
  depends_on = [module.modrg, module.modnic]
  source     = "../../7.Virtual_Machine"
  vm         = var.vm
}

#Child module calling for Bastion
module "modbastion" {
  depends_on = [module.modrg, module.modsubnet, module.modpip]
  source     = "../../9.Bastion"
  bastion    = var.bastion
}