view: active_data_maintenance_task {
  sql_table_name: PUBLIC.ACTIVE_DATA_MAINTENANCE_TASK ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: connection {
    type: string
    sql: ${TABLE}.CONNECTION ;;
  }

  dimension: created_at {
    type: number
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: maintenance_type {
    type: string
    sql: ${TABLE}.MAINTENANCE_TYPE ;;
  }

  dimension: model_names {
    type: string
    sql: ${TABLE}.MODEL_NAMES ;;
  }

  dimension: node_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.NODE_ID ;;
  }

  dimension: started_at {
    type: number
    sql: ${TABLE}.STARTED_AT ;;
  }

  measure: count {
    type: count
    drill_fields: [id, node.hostname, node.prev_node_id]
  }
}
