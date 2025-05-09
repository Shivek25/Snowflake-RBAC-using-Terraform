
# Databases Creation
resource "snowflake_database" "database" {
  provider                    = snowflake.system_admin
  for_each                    = local.databases
  name                        = upper(each.value.name)
  comment                     = each.value.comment
  data_retention_time_in_days = try(each.value.data_retention_time_in_days, var.data_retention_time_in_days)
  # lifecycle {
  #   prevent_destroy = true
  # }
}


