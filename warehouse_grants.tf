# Granting privileges to account roles for Snowflake warehouses

### NETWORK_WH ###
resource "snowflake_grant_privileges_to_account_role" "network_xs_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_engr.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["network_xs"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "network_s_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_engr.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["network_s"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "network_m_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_engr.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["network_m"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "network_l_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_engr.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["network_l"].name
  }
}

### ADV_WH ###
resource "snowflake_grant_privileges_to_account_role" "adv_xs_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.adv_analytics.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["adv_xs"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "adv_s_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.adv_analytics.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["adv_s"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "adv_m_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.adv_analytics.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["adv_m"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "adv_l_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.adv_analytics.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["adv_l"].name
  }
}

### ENGAGE_WH ###
resource "snowflake_grant_privileges_to_account_role" "engage_xs_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_engr.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["engage_xs"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "engage_s_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_engr.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["engage_s"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "engage_m_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_engr.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["engage_m"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "engage_l_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_engr.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["engage_l"].name
  }
}

### OUTCOMES_WH ###
resource "snowflake_grant_privileges_to_account_role" "outcomes_xs_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_engr.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["outcomes_xs"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "outcomes_s_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_engr.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["outcomes_s"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "outcomes_m_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_engr.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["outcomes_m"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "outcomes_l_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_engr.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["outcomes_l"].name
  }
}

### VIZ_WH ###
resource "snowflake_grant_privileges_to_account_role" "viz_xs_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_viz.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["viz_xs"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "viz_s_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_viz.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["viz_s"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "viz_m_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_viz.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["viz_m"].name
  }
}

resource "snowflake_grant_privileges_to_account_role" "viz_l_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    data.snowflake_account_roles.data_viz.like
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["viz_l"].name
  }
}

### DEPLOY_XS_WH ###
resource "snowflake_grant_privileges_to_account_role" "deploy_xs_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    snowflake_account_role.data_deploy.name,
    snowflake_account_role.adv_deploy.name
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["deploy_xs"].name
  }
}

### FIVETRAN_XS_WH ###

resource "snowflake_grant_privileges_to_account_role" "fivetran_xs_wh" {
  provider = snowflake.system_admin
  for_each = toset([
    snowflake_account_role.fivetran.name
  ])
  privileges        = ["USAGE", "OPERATE"]
  account_role_name = each.key
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.warehouse["fivetran_xs"].name
  }
}

# ### Looker_WH ###

# resource "snowflake_grant_privileges_to_account_role" "looker_xs_wh" {
#   provider = snowflake.system_admin
#   for_each = toset([
#     snowflake_account_role.reports.name
#   ])
#   privileges        = ["USAGE", "OPERATE"]
#   account_role_name = each.key
#   on_account_object {
#     object_type = "WAREHOUSE"
#     object_name = snowflake_warehouse.warehouse["looker_xs_wh"].name
#   }
# }


