### Schema Creation ###

resource "snowflake_schema" "adv_dbt_dev_db_schema" {
  provider                    = snowflake.system_admin
  for_each                    = toset(local.databases.adv_dbt_dev.schemas)
  name                        = upper(each.value)
  database                    = upper(local.databases.adv_dbt_dev.name)
  data_retention_time_in_days = var.schema_data_retention_time_in_days
  is_transient                = false
  with_managed_access         = false
}

resource "snowflake_schema" "datalake_dev_db_schema" {
  provider                    = snowflake.system_admin
  for_each                    = toset(local.databases.datalake_dev.schemas)
  name                        = upper(each.value)
  database                    = upper(local.databases.datalake_dev.name)
  data_retention_time_in_days = var.schema_data_retention_time_in_days
  is_transient                = false
  with_managed_access         = false
}

resource "snowflake_schema" "dna_intg_dev_db_schema" {
  provider                    = snowflake.system_admin
  for_each                    = toset(local.databases.dna_intg_dev.schemas)
  name                        = upper(each.value)
  database                    = upper(local.databases.dna_intg_dev.name)
  data_retention_time_in_days = var.schema_data_retention_time_in_days
  is_transient                = false
  with_managed_access         = false
}

resource "snowflake_schema" "adv_analytics_dev_db_schema" {
  provider                    = snowflake.system_admin
  for_each                    = toset(local.databases.adv_analytics_dev.schemas)
  name                        = upper(each.value)
  database                    = upper(local.databases.adv_analytics_dev.name)
  data_retention_time_in_days = var.schema_data_retention_time_in_days
  is_transient                = false
  with_managed_access         = false
}

resource "snowflake_schema" "dna_dev_db_schema" {
  provider                    = snowflake.system_admin
  for_each                    = toset(local.databases.dna_dev.schemas)
  name                        = upper(each.value)
  database                    = upper(local.databases.dna_dev.name)
  data_retention_time_in_days = var.schema_data_retention_time_in_days
  is_transient                = false
  with_managed_access         = false
}

resource "snowflake_schema" "enriched_dev_db_schema" {
  provider                    = snowflake.system_admin
  for_each                    = toset(local.databases.enriched_dev.schemas)
  name                        = upper(each.value)
  database                    = upper(local.databases.enriched_dev.name)
  data_retention_time_in_days = var.schema_data_retention_time_in_days
  is_transient                = false
  with_managed_access         = false
}

resource "snowflake_schema" "customer_ext_dev_db_schema" {
  provider                    = snowflake.system_admin
  for_each                    = toset(local.databases.customer_ext_dev.schemas)
  name                        = upper(each.value)
  database                    = upper(local.databases.customer_ext_dev.name)
  data_retention_time_in_days = var.schema_data_retention_time_in_days
  is_transient                = false
  with_managed_access         = false
}
