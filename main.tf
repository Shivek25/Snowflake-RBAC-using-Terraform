terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "2.0.0"
    }
  }
}


provider "snowflake" {
  alias             = "system_admin"
  organization_name = var.organization_name
  account_name      = var.account_name
  user              = var.user
  password          = var.password
  role              = "SYSADMIN"
}

provider "snowflake" {
  alias             = "account_admin"
  organization_name = var.organization_name
  account_name      = var.account_name
  user              = var.user
  password          = var.password
  role              = "ACCOUNTADMIN"
}

provider "snowflake" {
  alias             = "security_admin"
  organization_name = var.organization_name
  account_name      = var.account_name
  user              = var.user
  password          = var.password
  role              = "SECURITYADMIN"
}



