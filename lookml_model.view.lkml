view: lookml_model {
  sql_table_name: PUBLIC.LOOKML_MODEL ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.PROJECT_NAME ;;
  }

  dimension: unlimited_db_connections {
    type: yesno
    sql: ${TABLE}.UNLIMITED_DB_CONNECTIONS ;;
  }

  measure: count {
    type: count
    drill_fields: [id, project_name, name, lookml_model_db_connection.count]
  }
}
