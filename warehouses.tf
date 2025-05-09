resource "snowflake_warehouse" "warehouse" {
  provider                            = snowflake.system_admin
  for_each                            = local.warehouses
  name                                = upper("${each.key}_wh")
  auto_resume                         = true
  auto_suspend                        = try(each.value.auto_suspend_seconds, var.auto_suspend_seconds)
  comment                             = try(each.value.comment, "")
  initially_suspended                 = true
  min_cluster_count                   = try(each.value.min_cluster_count, var.min_cluster_count)
  max_cluster_count                   = try(each.value.max_cluster_count, var.max_cluster_count)
  max_concurrency_level               = try(each.value.max_concurrency_lvl, var.max_concurrency_lvl)
  scaling_policy                      = try(upper(each.value.scaling_policy), upper(var.scaling_policy))
  statement_timeout_in_seconds        = try(each.value.statement_timeout_in_seconds, var.statement_timeout_in_seconds)
  warehouse_size                      = upper(each.value.warehouse_size)
  enable_query_acceleration           = try(each.value.enable_query_acceleration, var.enable_query_acceleration)
  query_acceleration_max_scale_factor = try(each.value.query_acceleration_max_scale_factor, var.query_acceleration_max_scale_factor)
}
