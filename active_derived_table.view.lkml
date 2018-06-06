view: active_derived_table {
  sql_table_name: PUBLIC.ACTIVE_DERIVED_TABLE ;;

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

  dimension: testnumber {
    type: number
    sql:  7  ;;
  }

  dimension: dev_mode {
    type: number
    sql: ${TABLE}.DEV_MODE ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.KEY ;;
  }

  dimension: min_reap_at {
    type: number
    sql: ${TABLE}.MIN_REAP_AT ;;
  }

  dimension: mode {
    type: number
    sql: ${TABLE}.MODE ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.MODEL ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: rename_to {
    type: string
    sql: ${TABLE}.RENAME_TO ;;
  }

  dimension: started_at {
    type: number
    sql: ${TABLE}.STARTED_AT ;;
  }

  dimension: structure {
    type: string
    sql: ${TABLE}.STRUCTURE ;;
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
