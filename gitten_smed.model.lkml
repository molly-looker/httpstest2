connection: "looker"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: gitten_smed_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: gitten_smed_default_datagroup

explore: users {}

explore: content_view {}
