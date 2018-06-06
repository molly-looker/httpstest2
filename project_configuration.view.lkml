view: project_configuration {
  sql_table_name: PUBLIC.PROJECT_CONFIGURATION ;;

  dimension: git_service_name {
    type: string
    sql: ${TABLE}.GIT_SERVICE_NAME ;;
  }

  dimension: lookml_type {
    type: string
    sql: ${TABLE}.LOOKML_TYPE ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.PROJECT_ID ;;
  }

  dimension: pull_request_mode {
    type: string
    sql: ${TABLE}.PULL_REQUEST_MODE ;;
  }

  dimension: validation_required {
    type: yesno
    sql: ${TABLE}.VALIDATION_REQUIRED ;;
  }

  measure: count {
    type: count
    drill_fields: [git_service_name]
  }
}
