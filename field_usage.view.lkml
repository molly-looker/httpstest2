view: field_usage {
  sql_table_name: PUBLIC.FIELD_USAGE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: base_view {
    type: string
    sql: ${TABLE}.BASE_VIEW ;;
  }

  dimension: field {
    type: string
    sql: ${TABLE}.FIELD ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.MODEL ;;
  }

  dimension: times_used {
    type: number
    sql: ${TABLE}.TIMES_USED ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
