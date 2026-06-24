# Resources Groups
locals {
  location       = "eastus"
  resource_group = "paynpro-RG"
}

# Tags
locals {
  tags = {
    created     = "Tharun",
    environment = "production"
  }
}

# Subnet 
locals {
  subnets = {
    public_frontend_1 = {
      name           = "public-frontend-subnet-1"
      address_prefix = ["10.0.1.0/24"]
      type           = "public"
    }

    public_frontend_2 = {
      name           = "public-frontend-subnet-2"
      address_prefix = ["10.0.2.0/24"]
      type           = "public"
    }

    private_backend_1 = {
      name           = "private-backend-subnet-1"
      address_prefix = ["10.0.3.0/24"]
      type           = "private"
    }

    private_backend_2 = {
      name           = "private-backend-subnet-2"
      address_prefix = ["10.0.4.0/24"]
      type           = "private"
    }

    private_database_1 = {
      name           = "private-database-subnet-1"
      address_prefix = ["10.0.5.0/24"]
      type           = "private"
    }

    private_database_2 = {
      name           = "private-database-subnet-2"
      address_prefix = ["10.0.6.0/24"]
      type           = "private"
    }
  }
}
