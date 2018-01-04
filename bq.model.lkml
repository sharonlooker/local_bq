connection: "bq"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: bq_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bq_default_datagroup

explore: expenses_live {}

explore: expenses {}
