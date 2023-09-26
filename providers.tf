terraform {
  required_version = ">= 1.0.0"

  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.47.0"
    }
  }
  backend "remote" {
    organization = "OTPP"

    workspaces {
      name = "OTPP_2"
    }
  }
}
provider "snowflake" {
  alias = "useradmin"
  role  = "USERADMIN"
}

provider "snowflake" {
  alias = "securityadmin"
  role  = "SECURITYADMIN"
}

provider "snowflake" {
  alias = "sysadmin"
  role  = "SYSADMIN"
}
