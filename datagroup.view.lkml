view: datagroup {
  sql_table_name: PUBLIC.DATAGROUP ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: created_at {
    type: number
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.MODEL_NAME ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: stale_before {
    type: number
    sql: ${TABLE}.STALE_BEFORE ;;
  }

  dimension: trigger_check_at {
    type: number
    sql: ${TABLE}.TRIGGER_CHECK_AT ;;
  }

  dimension: trigger_error {
    type: string
    sql: ${TABLE}.TRIGGER_ERROR ;;
  }

  dimension: trigger_value {
    type: string
    sql: ${TABLE}.TRIGGER_VALUE ;;
  }

  dimension: triggered_at {
    type: number
    sql: ${TABLE}.TRIGGERED_AT ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, model_name]
  }
}
