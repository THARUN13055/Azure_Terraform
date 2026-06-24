module "Resources-Group" {
  source   = "./Modules/RG"
  rg-name  = local.resource_group
  location = local.location
}
