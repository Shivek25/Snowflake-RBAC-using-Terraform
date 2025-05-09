locals {
  databases = {
    raw_dev = {
      name    = "RAW_DEV_DB"
      comment = "Raw Development Data Database"
      schemas = []
    }

    dbt_dev = {
      name    = "DBT_DEV_DB"
      comment = "DBT Development Database for transformations and models"
      schemas = []
    }

    adv_dbt_dev = {
      name    = "ADV_DBT_DEV_DB"
      comment = "Advanced Analytics DBT Development Database"
      schemas = []
    }

    datalake_dev = {
      name    = "DATALAKE_DEV_DB"
      comment = "Datalake dev database"
      schemas = [
        "adlogic_pop", "adlogic_pop_stage", "adlogic_pop_enriched", "adlogic_pop_stage_enriched", "ams", "ams_enriched",
        "broadsign", "broadsign_enriched", "content_data_warehouse", "ccm", "ccm_enriched", "cdp", "cdp_enriched", "cms", "cms_enriched",
        "customer_ops", "customer_ops_enriched", "device_telemetry", "device_telemetry_stage",
        "dynamodb_pubhub", "dynamodb_pubhub_enriched", "fedex", "fips", "fips_enriched", "growth_solutions", "growth_solutions_enriched",
        "jira", "jira_enriched", "kevel", "legacy", "list_gen", "list_gen_enriched", "location_churn", "location_churn_enriched",
        "mdm", "mdm_enriched", "mojo", "mongodb_bcm", "mongodb_bcm_hist", "mongodb_content", "mongodb_content_hist",
        "mongodb_custom_content", "mongodb_custom_content_hist", "mongodb_device", "mongodb_device_hist",
        "mongodb_editorial_content", "mongodb_editorial_content_hist", "mongodb_location", "mongodb_location_hist",
        "network", "oh_landing", "oh_landing_enriched", "oh_landing_hist",
        "postgres_ase_asset", "postgres_ase_asset_hist", "postgres_broadsign_public", "postgres_broadsign_public_hist",
        "postgres_ccm_ccm", "postgres_ccm_ccm_hist", "postgres_device_migration", "postgres_device_migration_hist", "postgres_pgt_public", "postgres_pgt_public_hist",
        "qualtrics", "qualtrics_enriched", "reflect", "reflect_enriched", "reflect_footprint", "reflect_footprint_stage",
        "reference_datasets", "salesforce", "salesforce_enriched", "shared", "shared_enriched",
        "smartystreets", "smartystreets_enriched", "tableau", "treasuredata", "treasuredata_enriched", "uop_devices",
        "warehouse", "warehouse_kore", "warehouse_moduslink"
      ]
    }

    dna_intg_dev = {
      name    = "DNA_INTG_DEV_DB"
      comment = "DNA Integration Development Database"
      schemas = [
        "dna_source", "etl_utility", "validation", "viz_apps"
      ]
    }

    adv_analytics_dev = {
      name    = "ADV_ANALYTICS_DEV_DB"
      comment = "Advanced Analytics Development Database"
      schemas = [
        "adhoc", "archive", "auxiliary", "data_management", "dev_tools", "feature_store",
        "proj_buffers", "proj_churn", "proj_content_impact", "proj_expected_works", "proj_inflight_campaign_mgt",
        "proj_patient_profile", "proj_script_lift", "proj_zero_writer_conv", "shared", "tmp"
      ]
    }

    dna_dev = {
      name    = "DNA_DEV_DB"
      comment = "DNA Development Database"
      schemas = [
        "admin", "cleanse", "conform", "conform_hist", "data_viz", "data_viz_solution", "dcsr", "dcsr_solution",
        "engage", "engage_hist", "engage_solution", "list_management", "network", "network_hist",
        "network_solution", "network_pgt_export", "outcomes", "outcomes_definitive_health", "outcomes_hist", "outcomes_solution",
        "pgt", "pgt_solution", "salesforce", "salesforce_solution", "sandbox", "schemachange", "transform", "conform_master"
      ]
    }

    enriched_dev = {
      name    = "ENRICHED_DEV_DB"
      comment = "Enriched Development Database"
      schemas = [
        "ams_enriched", "broadsign_enriched", "ccm_enriched", "cdp_enriched", "census_enriched", "cms_enriched", "customer_ops_enriched",
        "cvs_enriched", "fips_enriched", "growth_solutions_enriched", "jira_enriched", "list_gen_enriched", "location_churn_enriched",
        "mdm_enriched", "mmit_enriched", "nielsen_enriched", "npi_registry_enriched",
        "oh_landing_enriched", "onekey_enriched", "pgt4_enriched", "qualtrics_enriched", "reflect_enriched", "salesforce_enriched",
        "salesforce_orange_base_enriched", "salesforce_orange_public_enriched", "salesforce_purple_base_enriched",
        "shared_enriched", "smartystreets_enriched", "symphony_enriched", "treasuredata_enriched"
      ]
    }

    customer_ext_dev = {
      name    = "CUSTOMER_EXTERNAL_DEV_DB"
      comment = "Customer External Development Database"
      schemas = [
        "config", "merck", "pfizer"
      ]
    }

    techops_dev = {
      name    = "TECHOPS_DEV_DB"
      comment = "TechOps Development Database"
      schemas = []
    }
  }

  ### Warehouses ###

  warehouses = {

    ### NETWORK_WH ###
    network_xs = {
      comment        = "network_xs_wh"
      warehouse_size = "xsmall"
    }
    network_s = {
      comment        = "network_s_wh"
      warehouse_size = "small"
    }
    network_m = {
      comment        = "network_m_wh"
      warehouse_size = "medium"
    }
    network_l = {
      comment        = "network_l_wh"
      warehouse_size = "large"
    }

    ### ADV_WH ###
    adv_xs = {
      comment        = "adv_xs_wh"
      warehouse_size = "xsmall"
    }
    adv_s = {
      comment        = "adv_s_wh"
      warehouse_size = "small"
    }
    adv_m = {
      comment        = "adv_m_wh"
      warehouse_size = "medium"
    }
    adv_l = {
      comment        = "adv_l_wh"
      warehouse_size = "large"
    }

    ### ENGAGE_WH ###
    engage_xs = {
      comment        = "engage_xs_wh"
      warehouse_size = "xsmall"
    }
    engage_s = {
      comment        = "engage_s_wh"
      warehouse_size = "small"
    }
    engage_m = {
      comment        = "engage_m_wh"
      warehouse_size = "medium"
    }
    engage_l = {
      comment        = "engage_l_wh"
      warehouse_size = "large"
    }

    ### OUTCOME_WH ###
    outcomes_xs = {
      comment        = "outcomes_xs_wh"
      warehouse_size = "xsmall"
    }
    outcomes_s = {
      comment        = "outcomes_s_wh"
      warehouse_size = "small"
    }
    outcomes_m = {
      comment        = "outcomes_m_wh"
      warehouse_size = "medium"
    }
    outcomes_l = {
      comment        = "outcomes_l_wh"
      warehouse_size = "large"
    }

    ### VIZ_WH ###
    viz_xs = {
      comment        = "viz_xs_wh"
      warehouse_size = "xsmall"
    }
    viz_s = {
      comment        = "viz_s_wh"
      warehouse_size = "small"
    }
    viz_m = {
      comment        = "viz_m_wh"
      warehouse_size = "medium"
    }
    viz_l = {
      comment        = "viz_l_wh"
      warehouse_size = "large"
    }

    ### DEPLOY_XS_WH ###
    deploy_xs = {
      comment        = "deploy_xs_wh"
      warehouse_size = "xsmall"
    }

    ### FIVETRAN_XS_WH ###
    fivetran_xs = {
      comment        = "fivetran_xs_wh"
      warehouse_size = "xsmall"
    }

    ### LOOKER_XS_WH ###
    looker_xs = {
      comment        = "looker_xs_wh"
      warehouse_size = "Xsmall"
    }
  }


  all_object_types = [
    "EVENT TABLES", "TABLES", "EXTERNAL TABLES", "FILE FORMATS", "FUNCTIONS", "SEQUENCES", "DYNAMIC TABLES",
    "STAGES", "STREAMS", "TASKS", "VIEWS", "MATERIALIZED VIEWS", "PROCEDURES", "PIPES"
  ]
  future_object_types = [
    "EVENT TABLES", "TABLES", "EXTERNAL TABLES", "FILE FORMATS", "FUNCTIONS", "SEQUENCES", "DYNAMIC TABLES",
    "STAGES", "STREAMS", "TASKS", "VIEWS", "MATERIALIZED VIEWS", "PROCEDURES", "PIPES"
  ]
}


