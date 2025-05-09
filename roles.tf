
# Account Roles
resource "snowflake_account_role" "data_deploy" {
  provider = snowflake.security_admin
  name     = "DATA_DEPLOY_RL"
}

resource "snowflake_account_role" "adv_deploy" {
  provider = snowflake.security_admin
  name     = "ADV_DEPLOY_RL"
}

resource "snowflake_account_role" "fivetran" {
  provider = snowflake.security_admin
  name     = "FIVETRAN_RL"
}

resource "snowflake_account_role" "reports" {
  provider = snowflake.security_admin
  name     = "REPORTS_RL"
}

resource "snowflake_account_role" "astronomer" {
  provider = snowflake.security_admin
  name     = "ASTRONOMER_RL"
}

resource "snowflake_account_role" "atlan" {
  provider = snowflake.security_admin
  name     = "ATLAN_RL"
}

resource "snowflake_account_role" "cii" {
  provider = snowflake.security_admin
  name     = "CII_RL"
}

resource "snowflake_account_role" "okta_provisional" {
  provider = snowflake.security_admin
  name     = "OKTA_PROVISIONER"
}


# Database Roles

# ADV_DBT_DEV_DB Roles
resource "snowflake_database_role" "adv_dbt_read" {
  provider = snowflake.system_admin
  database = snowflake_database.database["adv_dbt_dev"].name
  name     = "ADV_DBT_READ_RL"
  comment  = "Reader role for the ADV_DBT_DEV_DB"
}

resource "snowflake_database_role" "adv_dbt_update" {
  provider = snowflake.system_admin
  database = snowflake_database.database["adv_dbt_dev"].name
  name     = "ADV_DBT_UPDATE_RL"
  comment  = "Updater role for the ADV_DBT_DEV_DB"
}

resource "snowflake_database_role" "adv_dbt_write" {
  provider = snowflake.system_admin
  database = snowflake_database.database["adv_dbt_dev"].name
  name     = "ADV_DBT_WRITE_RL"
  comment  = "Write role for the ADV_DBT_DEV_DB"
}


# DBT_DEV_DB Roles
resource "snowflake_database_role" "dbt_read" {
  provider = snowflake.system_admin
  database = snowflake_database.database["dbt_dev"].name
  name     = "DBT_READ_RL"
  comment  = "Reader role for the DBT_DEV_DB"
}

resource "snowflake_database_role" "dbt_update" {
  provider = snowflake.system_admin
  database = snowflake_database.database["dbt_dev"].name
  name     = "DBT_UPDATE_RL"
  comment  = "Updater role for the DBT_DEV_DB"
}

resource "snowflake_database_role" "dbt_write" {
  provider = snowflake.system_admin
  database = snowflake_database.database["dbt_dev"].name
  name     = "DBT_WRITE_RL"
  comment  = "Write role for the DBT_DEV_DB"
}


# RAW_DEV_DB Roles
resource "snowflake_database_role" "raw_read" {
  provider = snowflake.system_admin
  database = snowflake_database.database["raw_dev"].name
  name     = "RAW_READ_RL"
  comment  = "Reader role for the RAW_DEV_DB"
}

resource "snowflake_database_role" "raw_update" {
  provider = snowflake.system_admin
  database = snowflake_database.database["raw_dev"].name
  name     = "RAW_UPDATE_RL"
  comment  = "Updater role for the RAW_DEV_DB"
}

resource "snowflake_database_role" "raw_write" {
  provider = snowflake.system_admin
  database = snowflake_database.database["raw_dev"].name
  name     = "RAW_WRITE_RL"
  comment  = "Write role for the RAW_DEV_DB"
}


# DATALAKE_DEV_DB Roles
resource "snowflake_database_role" "datalake_read" {
  provider = snowflake.system_admin
  database = snowflake_database.database["datalake_dev"].name
  name     = "DATALAKE_READ_RL"
  comment  = "Reader role for the DATALAKE_DEV_DB"
}

resource "snowflake_database_role" "datalake_update" {
  provider = snowflake.system_admin
  database = snowflake_database.database["datalake_dev"].name
  name     = "DATALAKE_UPDATE_RL"
  comment  = "Updater role for the DATALAKE_DEV_DB"
}

resource "snowflake_database_role" "datalake_write" {
  provider = snowflake.system_admin
  database = snowflake_database.database["datalake_dev"].name
  name     = "DATALAKE_WRITE_RL"
  comment  = "Write role for the DATALAKE_DEV_DB"
}


# DNA_INTG_DEV_DB Roles
resource "snowflake_database_role" "dna_intg_read" {
  provider = snowflake.system_admin
  database = snowflake_database.database["dna_intg_dev"].name
  name     = "INTG_READ_RL"
  comment  = "Reader role for the DNA_INTG_DEV_DB"
}

resource "snowflake_database_role" "dna_intg_update" {
  provider = snowflake.system_admin
  database = snowflake_database.database["dna_intg_dev"].name
  name     = "INTG_UPDATE_RL"
  comment  = "Updater role for the DNA_INTG_DEV_DB"
}

resource "snowflake_database_role" "dna_intg_write" {
  provider = snowflake.system_admin
  database = snowflake_database.database["dna_intg_dev"].name
  name     = "INTG_WRITE_RL"
  comment  = "Write role for the DNA_INTG_DEV_DB"
}


# ADV_ANALYTICS_DEV_DB Roles
resource "snowflake_database_role" "adv_analytics_read" {
  provider = snowflake.system_admin
  database = snowflake_database.database["adv_analytics_dev"].name
  name     = "ALT_READ_RL"
  comment  = "Reader role for the ADV_ANALYTICS_DEV_DB"
}

resource "snowflake_database_role" "adv_analytics_update" {
  provider = snowflake.system_admin
  database = snowflake_database.database["adv_analytics_dev"].name
  name     = "ALT_UPDATE_RL"
  comment  = "Updater role for the ADV_ANALYTICS_DEV_DB"
}

resource "snowflake_database_role" "adv_analytics_write" {
  provider = snowflake.system_admin
  database = snowflake_database.database["adv_analytics_dev"].name
  name     = "ALT_WRITE_RL"
  comment  = "Write role for the ADV_ANALYTICS_DEV_DB"
}


# DNA_DEV_DB Roles
resource "snowflake_database_role" "dna_read" {
  provider = snowflake.system_admin
  database = snowflake_database.database["dna_dev"].name
  name     = "DNA_READ_RL"
  comment  = "Reader role for the DNA_DEV_DB"
}

resource "snowflake_database_role" "dna_update" {
  provider = snowflake.system_admin
  database = snowflake_database.database["dna_dev"].name
  name     = "DNA_UPDATE_RL"
  comment  = "Updater role for the DNA_DEV_DB"
}

resource "snowflake_database_role" "dna_write" {
  provider = snowflake.system_admin
  database = snowflake_database.database["dna_dev"].name
  name     = "DNA_WRITE_RL"
  comment  = "Write role for the DNA_DEV_DB"
}


# ENRICHED_DEV_DB Roles
resource "snowflake_database_role" "enriched_read" {
  provider = snowflake.system_admin
  database = snowflake_database.database["enriched_dev"].name
  name     = "ENRICHED_READ_RL"
  comment  = "Reader role for the ENRICHED_DEV_DB"
}

resource "snowflake_database_role" "enriched_update" {
  provider = snowflake.system_admin
  database = snowflake_database.database["enriched_dev"].name
  name     = "ENRICHED_UPDATE_RL"
  comment  = "Updater role for the ENRICHED_DEV_DB"
}

resource "snowflake_database_role" "enriched_write" {
  provider = snowflake.system_admin
  database = snowflake_database.database["enriched_dev"].name
  name     = "ENRICHED_WRITE_RL"
  comment  = "Write role for the ENRICHED_DEV_DB"
}


# CUSTOMER_EXTERNAL_DEV_DB Roles
resource "snowflake_database_role" "customer_ext_read" {
  provider = snowflake.system_admin
  database = snowflake_database.database["customer_ext_dev"].name
  name     = "CUSTOMER_READ_RL"
  comment  = "Reader role for the CUSTOMER_EXTERNAL_DEV_DB"
}

resource "snowflake_database_role" "customer_ext_update" {
  provider = snowflake.system_admin
  database = snowflake_database.database["customer_ext_dev"].name
  name     = "CUSTOMER_UPDATE_RL"
  comment  = "Updater role for the CUSTOMER_EXTERNAL_DEV_DB"
}

resource "snowflake_database_role" "customer_ext_write" {
  provider = snowflake.system_admin
  database = snowflake_database.database["customer_ext_dev"].name
  name     = "CUSTOMER_WRITE_RL"
  comment  = "Write role for the CUSTOMER_EXTERNAL_DEV_DB"
}


# TECHOPS_DEV_DB Roles
resource "snowflake_database_role" "techops_read" {
  provider = snowflake.system_admin
  database = snowflake_database.database["techops_dev"].name
  name     = "TECHOPS_READ_RL"
  comment  = "Reader role for the TECHOPS_DEV_DB"
}

resource "snowflake_database_role" "techops_update" {
  provider = snowflake.system_admin
  database = snowflake_database.database["techops_dev"].name
  name     = "TECHOPS_UPDATE_RL"
  comment  = "Updater role for the TECHOPS_DEV_DB"
}

resource "snowflake_database_role" "techops_write" {
  provider = snowflake.system_admin
  database = snowflake_database.database["techops_dev"].name
  name     = "TECHOPS_WRITE_RL"
  comment  = "Write role for the TECHOPS_DEV_DB"
}

