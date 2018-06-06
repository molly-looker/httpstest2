view: tracing_span {
  sql_table_name: PUBLIC.TRACING_SPAN ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: baggage_json {
    type: string
    sql: ${TABLE}.BAGGAGE_JSON ;;
  }

  dimension: child_of_span_id {
    type: string
    sql: ${TABLE}.CHILD_OF_SPAN_ID ;;
  }

  dimension: end_ms {
    type: number
    sql: ${TABLE}.END_MS ;;
  }

  dimension: operation_name {
    type: string
    sql: ${TABLE}.OPERATION_NAME ;;
  }

  dimension: session_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SESSION_ID ;;
  }

  dimension: span_id {
    type: string
    sql: ${TABLE}.SPAN_ID ;;
  }

  dimension: start_ms {
    type: number
    sql: ${TABLE}.START_MS ;;
  }

  dimension: tags_json {
    type: string
    sql: ${TABLE}.TAGS_JSON ;;
  }

  dimension: trace_id {
    type: string
    sql: ${TABLE}.TRACE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, operation_name, session.id]
  }
}
