view: new_active_derived_table {
  sql_table_name: PUBLIC.NEW_ACTIVE_DERIVED_TABLE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: cache_value {
    type: string
    sql: ${TABLE}.CACHE_VALUE ;;
  }

  dimension: connection {
    type: string
    sql: ${TABLE}.CONNECTION ;;
  }

  dimension: dead_at {
    type: number
    sql: ${TABLE}.DEAD_AT ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.KEY ;;
  }

  dimension: mode {
    type: number
    sql: ${TABLE}.MODE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: rename_to {
    type: string
    sql: ${TABLE}.RENAME_TO ;;
  }

  dimension: trigger_at {
    type: number
    sql: ${TABLE}.TRIGGER_AT ;;
  }

  dimension: trigger_duration {
    type: number
    sql: ${TABLE}.TRIGGER_DURATION ;;
  }

  dimension: trigger_error {
    type: string
    sql: ${TABLE}.TRIGGER_ERROR ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
