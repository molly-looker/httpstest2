view: event_attribute {
  sql_table_name: PUBLIC.EVENT_ATTRIBUTE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.EVENT_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}."VALUE" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, event.name, event.id]
  }
}
