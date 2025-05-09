#This file contains the variables used in the Terraform configuration.

variable "organization_name" {
  description = "The Snowflake organization name"
  type        = string
}

variable "account_name" {
  description = "The Snowflake account name"
  type        = string
}

variable "user" {
  description = "The Snowflake account username"
  type        = string
}

variable "password" {
  description = "The Snowflake account password"
  type        = string
}


# Object Creation
variable "data_retention_time_in_days" {
  type        = number
  description = "number of days to retain data with a maximum of 90 days"
  default     = 7
}

variable "schema_data_retention_time_in_days" {
  type        = number
  description = "number of days to retain data, set at the schema level, with a maximum of 90 days"
  default     = 7
}

variable "auto_suspend_seconds" {
  type        = number
  description = "Specifies the number of seconds of inactivity after which a warehouse is automatically suspended"
  default     = 10
}

variable "min_cluster_count" {
  type        = number
  description = "minimum warehouse cluster size"
  default     = 1
}

variable "max_cluster_count" {
  type        = number
  description = "maximum warehouse cluster size"
  default     = 5
}

variable "max_concurrency_lvl" {
  type        = number
  description = "concurrency level for SQL statements executed by a wh"
  default     = 8
}

variable "scaling_policy" {
  type        = string
  description = "Scaling policy for clusters in a multi-cluster warehouse running in auto-scale mode. Valid values are standard or economy"
  default     = "economy"
}

variable "statement_timeout_in_seconds" {
  type        = number
  description = "Specifies the time, in seconds, after which a running SQL statement (query, DDL, DML, etc.) is canceled by the system"
  default     = 3600
}

variable "enable_query_acceleration" {
  type        = string
  description = "Specifies whether to enable the query acceleration service for queries"
  default     = "false"
}

variable "query_acceleration_max_scale_factor" {
  type        = number
  description = "Specifies the maximum scale factor for leasing compute resources for query acceleration"
  default     = 1
}

