
# Database Grants
resource "snowflake_grant_privileges_to_database_role" "dbt_db_write" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dbt_write.fully_qualified_name
  privileges         = ["USAGE", "MONITOR", "CREATE SCHEMA"]
  on_database        = snowflake_database.database["dbt_dev"].name
  with_grant_option  = false
}

resource "snowflake_grant_privileges_to_database_role" "dbt_db_readonly" {
  provider = snowflake.system_admin
  for_each = {
    read_role   = snowflake_database_role.dbt_read.fully_qualified_name,
    update_role = snowflake_database_role.dbt_update.fully_qualified_name
  }
  database_role_name = each.value
  privileges         = ["USAGE", "MONITOR"]
  on_database        = snowflake_database.database["dbt_dev"].name
  with_grant_option  = false
}


# Schema Grants
resource "snowflake_grant_privileges_to_database_role" "dbt_schemas_all" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dbt_write.fully_qualified_name
  all_privileges     = true
  with_grant_option  = false
  on_schema {
    all_schemas_in_database = snowflake_database.database["dbt_dev"].name
  }
}
resource "snowflake_grant_privileges_to_database_role" "dbt_future_schemas_all" {
  provider           = snowflake.security_admin
  database_role_name = snowflake_database_role.dbt_write.fully_qualified_name
  all_privileges     = true
  with_grant_option  = false
  on_schema {
    future_schemas_in_database = snowflake_database.database["dbt_dev"].name
  }
}


resource "snowflake_grant_privileges_to_database_role" "dbt_schema_readonly" {
  provider = snowflake.system_admin
  for_each = {
    read_role   = snowflake_database_role.dbt_read.fully_qualified_name,
    update_role = snowflake_database_role.dbt_update.fully_qualified_name
  }
  database_role_name = each.value
  privileges         = ["USAGE", "MONITOR"]
  with_grant_option  = false
  on_schema {
    all_schemas_in_database = snowflake_database.database["dbt_dev"].name
  }
}

resource "snowflake_grant_privileges_to_database_role" "dbt_schema_future_readonly" {
  provider = snowflake.security_admin
  for_each = {
    read_role   = snowflake_database_role.dbt_read.fully_qualified_name,
    update_role = snowflake_database_role.dbt_update.fully_qualified_name
  }
  database_role_name = each.value
  privileges         = ["USAGE", "MONITOR"]
  with_grant_option  = false
  on_schema {
    future_schemas_in_database = snowflake_database.database["dbt_dev"].name
  }
}


# Object Grants

resource "snowflake_grant_privileges_to_database_role" "dbt_all_objs" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dbt_write.fully_qualified_name
  all_privileges     = true
  with_grant_option  = false
  for_each           = toset(local.all_object_types)
  on_schema_object {
    all {
      object_type_plural = each.key
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}
resource "snowflake_grant_privileges_to_database_role" "dbt_future_all_objs" {
  provider           = snowflake.security_admin
  database_role_name = snowflake_database_role.dbt_write.fully_qualified_name
  all_privileges     = true
  with_grant_option  = false
  for_each           = toset(local.future_object_types)
  on_schema_object {
    future {
      object_type_plural = each.key
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}


resource "snowflake_grant_privileges_to_database_role" "dbt_multiple_objs_read" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dbt_read.fully_qualified_name
  privileges         = ["SELECT", "REFERENCES"]
  with_grant_option  = false
  for_each           = toset(["MATERIALIZED VIEWS", "VIEWS", "TABLES", "EXTERNAL TABLES", "EVENT TABLES"])
  on_schema_object {
    all {
      object_type_plural = each.value
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}
resource "snowflake_grant_privileges_to_database_role" "dbt_future_multiple_objs_read" {
  provider           = snowflake.security_admin
  database_role_name = snowflake_database_role.dbt_read.fully_qualified_name
  privileges         = ["SELECT", "REFERENCES"]
  with_grant_option  = false
  for_each           = toset(["MATERIALIZED VIEWS", "VIEWS", "TABLES", "EXTERNAL TABLES", "EVENT TABLES"])
  on_schema_object {
    future {
      object_type_plural = each.value
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}


resource "snowflake_grant_privileges_to_database_role" "dbt_multiple_objs_update" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dbt_update.fully_qualified_name
  privileges         = ["SELECT", "REFERENCES"]
  with_grant_option  = false
  for_each           = toset(["MATERIALIZED VIEWS", "VIEWS", "EXTERNAL TABLES"])
  on_schema_object {
    all {
      object_type_plural = each.value
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}
resource "snowflake_grant_privileges_to_database_role" "dbt_future_multiple_objs_update" {
  provider           = snowflake.security_admin
  database_role_name = snowflake_database_role.dbt_update.fully_qualified_name
  privileges         = ["SELECT", "REFERENCES"]
  with_grant_option  = false
  for_each           = toset(["MATERIALIZED VIEWS", "VIEWS", "EXTERNAL TABLES"])
  on_schema_object {
    future {
      object_type_plural = each.value
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}


# Table Grants
resource "snowflake_grant_privileges_to_database_role" "dbt_tables_update" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dbt_update.fully_qualified_name
  privileges         = ["SELECT", "INSERT", "UPDATE", "DELETE", "TRUNCATE", "REFERENCES"]
  with_grant_option  = false
  on_schema_object {
    all {
      object_type_plural = "TABLES"
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}
resource "snowflake_grant_privileges_to_database_role" "dbt_future_tables_update" {
  provider           = snowflake.security_admin
  database_role_name = snowflake_database_role.dbt_update.fully_qualified_name
  privileges         = ["SELECT", "INSERT", "UPDATE", "DELETE", "TRUNCATE", "REFERENCES"]
  with_grant_option  = false
  on_schema_object {
    future {
      object_type_plural = "TABLES"
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}


resource "snowflake_grant_privileges_to_database_role" "dbt_dynamic_tables_read" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dbt_read.fully_qualified_name
  privileges         = ["SELECT"]
  with_grant_option  = false
  on_schema_object {
    all {
      object_type_plural = "DYNAMIC TABLES"
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}
resource "snowflake_grant_privileges_to_database_role" "dbt_future_dynamic_tables_read" {
  provider           = snowflake.security_admin
  database_role_name = snowflake_database_role.dbt_read.fully_qualified_name
  privileges         = ["SELECT"]
  with_grant_option  = false
  on_schema_object {
    future {
      object_type_plural = "DYNAMIC TABLES"
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}


resource "snowflake_grant_privileges_to_database_role" "dbt_dynamic_tables_update" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dbt_update.fully_qualified_name
  privileges         = ["SELECT", "OPERATE", "MONITOR"]
  with_grant_option  = false
  on_schema_object {
    all {
      object_type_plural = "DYNAMIC TABLES"
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}
resource "snowflake_grant_privileges_to_database_role" "dbt_future_dynamic_tables_update" {
  provider           = snowflake.security_admin
  database_role_name = snowflake_database_role.dbt_update.fully_qualified_name
  privileges         = ["SELECT", "OPERATE", "MONITOR"]
  with_grant_option  = false
  on_schema_object {
    future {
      object_type_plural = "DYNAMIC TABLES"
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}


resource "snowflake_grant_privileges_to_database_role" "dbt_event_tables_update" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dbt_update.fully_qualified_name
  privileges         = ["SELECT", "DELETE", "TRUNCATE", "REFERENCES"]
  with_grant_option  = false
  on_schema_object {
    all {
      object_type_plural = "EVENT TABLES"
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}
resource "snowflake_grant_privileges_to_database_role" "dbt_future_event_tables_update" {
  provider           = snowflake.security_admin
  database_role_name = snowflake_database_role.dbt_update.fully_qualified_name
  privileges         = ["SELECT", "DELETE", "TRUNCATE", "REFERENCES"]
  with_grant_option  = false
  on_schema_object {
    future {
      object_type_plural = "EVENT TABLES"
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}


# Task Grants
resource "snowflake_grant_privileges_to_database_role" "dbt_tasks_update" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dbt_update.fully_qualified_name
  privileges         = ["MONITOR", "OPERATE"]
  with_grant_option  = false
  on_schema_object {
    all {
      object_type_plural = "TASKS"
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}
resource "snowflake_grant_privileges_to_database_role" "dbt_future_tasks_update" {
  provider           = snowflake.security_admin
  database_role_name = snowflake_database_role.dbt_update.fully_qualified_name
  privileges         = ["MONITOR", "OPERATE"]
  with_grant_option  = false
  on_schema_object {
    future {
      object_type_plural = "TASKS"
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}


# Procedures and Functions Grants
resource "snowflake_grant_privileges_to_database_role" "dbt_procedures_functions_update" {
  provider           = snowflake.system_admin
  database_role_name = snowflake_database_role.dbt_update.fully_qualified_name
  privileges         = ["USAGE"]
  with_grant_option  = false
  for_each           = toset(["PROCEDURES", "FUNCTIONS"])
  on_schema_object {
    all {
      object_type_plural = each.value
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}
resource "snowflake_grant_privileges_to_database_role" "dbt_future_procedures_functions_update" {
  provider           = snowflake.security_admin
  database_role_name = snowflake_database_role.dbt_update.fully_qualified_name
  privileges         = ["USAGE"]
  with_grant_option  = false
  for_each           = toset(["PROCEDURES", "FUNCTIONS"])
  on_schema_object {
    future {
      object_type_plural = each.value
      in_database        = snowflake_database.database["dbt_dev"].name
    }
  }
}


