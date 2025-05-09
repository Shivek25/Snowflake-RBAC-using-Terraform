# data "snowflake_current_account" "this" {
#   provider = snowflake.system_admin
# }

# data "snowflake_roles" "org_admin" {
#   provider = snowflake.security_admin
#   like     = "ORGADMIN"
# }

# data "snowflake_roles" "account_admin" {
#   provider = snowflake.security_admin
#   like     = "ACCOUNTADMIN"
# }

# data "snowflake_roles" "system_admin" {
#   provider = snowflake.security_admin
#   like     = "SYSADMIN"
# }

# data "snowflake_roles" "security_admin" {
#   provider = snowflake.security_admin
#   like     = "SECURITYADMIN"
# }



data "snowflake_account_roles" "data_engr" {
  provider = snowflake.security_admin
  like     = "DATA_ENGR_RL"
}

data "snowflake_account_roles" "adv_analytics" {
  provider = snowflake.security_admin
  like     = "ADV_ANALYTICS_RL"
}

data "snowflake_account_roles" "data_viz" {
  provider = snowflake.security_admin
  like     = "DATA_VIZ_RL"
}

data "snowflake_account_roles" "data_qa" {
  provider = snowflake.security_admin
  like     = "DATA_QA_RL"
}

data "snowflake_account_roles" "devops" {
  provider = snowflake.security_admin
  like     = "DEVOPS_RL"
}

data "snowflake_account_roles" "dataops" {
  provider = snowflake.security_admin
  like     = "DATAOPS_RL"
}
