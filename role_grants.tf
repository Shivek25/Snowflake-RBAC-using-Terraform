
# System roles
resource "snowflake_grant_account_role" "system_admin" {
  provider = snowflake.security_admin
  for_each = toset([
    data.snowflake_account_roles.data_engr.like,
    data.snowflake_account_roles.adv_analytics.like,
    data.snowflake_account_roles.data_viz.like,
    snowflake_account_role.data_deploy.name,
    snowflake_account_role.adv_deploy.name,
    data.snowflake_account_roles.data_qa.like,
    data.snowflake_account_roles.devops.like,
    data.snowflake_account_roles.dataops.like,
    snowflake_account_role.fivetran.name,
    snowflake_account_role.reports.name,
    snowflake_account_role.astronomer.name,
    snowflake_account_role.atlan.name,
    snowflake_account_role.cii.name,
    snowflake_account_role.okta_provisional.name
  ])
  role_name        = each.value
  parent_role_name = "SYSADMIN"
}


# Database roles grants to account roles

resource "snowflake_grant_database_role" "dbt_read" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dbt_read.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.adv_analytics.like,
    snowflake_account_role.adv_deploy.name
  ])
  parent_role_name = each.value
}

resource "snowflake_grant_database_role" "dbt_write" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dbt_write.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.data_engr.like,
    data.snowflake_account_roles.data_viz.like,
    snowflake_account_role.data_deploy.name
  ])
  parent_role_name = each.value
}


resource "snowflake_grant_database_role" "adv_dbt_read" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.adv_dbt_read.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.data_engr.like,
    data.snowflake_account_roles.data_viz.like
  ])
  parent_role_name = each.value
}

resource "snowflake_grant_database_role" "adv_dbt_write" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.adv_dbt_write.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.adv_analytics.like,
    snowflake_account_role.adv_deploy.name
  ])
  parent_role_name = each.value
}


resource "snowflake_grant_database_role" "raw_read" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.raw_read.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.adv_analytics.like,
    data.snowflake_account_roles.data_viz.like
  ])
  parent_role_name = each.value
}

resource "snowflake_grant_database_role" "raw_write" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.raw_write.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.data_engr.like,
    snowflake_account_role.data_deploy.name,
    snowflake_account_role.fivetran.name
  ])
  parent_role_name = each.value
}


resource "snowflake_grant_database_role" "datalake_read" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.datalake_read.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.adv_analytics.like,
    data.snowflake_account_roles.data_viz.like
  ])
  parent_role_name = each.value
}

resource "snowflake_grant_database_role" "datalake_write" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.datalake_write.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.data_engr.like,
    snowflake_account_role.data_deploy.name,
    data.snowflake_account_roles.data_viz.like
  ])
  parent_role_name = each.value
}


resource "snowflake_grant_database_role" "dna_intg_read" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dna_intg_read.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.adv_analytics.like,
    data.snowflake_account_roles.data_viz.like
  ])
  parent_role_name = each.value
}

resource "snowflake_grant_database_role" "dna_intg_write" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dna_intg_write.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.data_engr.like,
    snowflake_account_role.data_deploy.name
  ])
  parent_role_name = each.value
}


resource "snowflake_grant_database_role" "adv_analytics_read" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.adv_analytics_read.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.data_engr.like,
    data.snowflake_account_roles.data_viz.like
  ])
  parent_role_name = each.value
}

resource "snowflake_grant_database_role" "adv_analytics_write" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.adv_analytics_write.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.adv_analytics.like,
    snowflake_account_role.adv_deploy.name
  ])
  parent_role_name = each.value
}


resource "snowflake_grant_database_role" "dna_read" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dna_read.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.adv_analytics.like,
    data.snowflake_account_roles.data_viz.like
  ])
  parent_role_name = each.value
}

resource "snowflake_grant_database_role" "dna_write" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dna_write.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.data_engr.like,
    snowflake_account_role.data_deploy.name
  ])
  parent_role_name = each.value
}


resource "snowflake_grant_database_role" "enriched_read" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.enriched_read.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.adv_analytics.like,
    data.snowflake_account_roles.data_viz.like
  ])
  parent_role_name = each.value
}

resource "snowflake_grant_database_role" "enriched_write" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.enriched_write.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.data_engr.like,
    snowflake_account_role.data_deploy.name
  ])
  parent_role_name = each.value
}


resource "snowflake_grant_database_role" "customer_ext_read" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.customer_ext_read.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.adv_analytics.like,
    data.snowflake_account_roles.data_viz.like
  ])
  parent_role_name = each.value
}

resource "snowflake_grant_database_role" "customer_ext_write" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.customer_ext_write.fully_qualified_name
  for_each = toset([
    data.snowflake_account_roles.data_engr.like,
    snowflake_account_role.data_deploy.name
  ])
  parent_role_name = each.value
}