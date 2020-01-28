view: cache_index {
  sql_table_name: PUBLIC.CACHE_INDEX ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: cache {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CACHE_TIME ;;
  }

  dimension: cleanup_scheme {
    type: string
    sql: ${TABLE}.CLEANUP_SCHEME ;;
  }

  dimension: computation_time {
    type: number
    sql: ${TABLE}.COMPUTATION_TIME ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: encrypted {
    type: yesno
    sql: ${TABLE}.ENCRYPTED ;;
  }

  dimension: entry_type {
    type: string
    sql: ${TABLE}.ENTRY_TYPE ;;
  }

  dimension: execution_time {
    type: number
    sql: ${TABLE}.EXECUTION_TIME ;;
  }

  dimension_group: expiration {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EXPIRATION ;;
  }

  dimension: gzipped {
    type: yesno
    sql: ${TABLE}.GZIPPED ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.HASH ;;
  }

  dimension_group: last_touched {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LAST_TOUCHED_AT ;;
  }

  dimension: marshaled {
    type: yesno
    sql: ${TABLE}.MARSHALED ;;
  }

  dimension: node_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.NODE_ID ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}.QUERY_TEXT ;;
  }

  dimension: result_columns {
    type: number
    sql: ${TABLE}.RESULT_COLUMNS ;;
  }

  dimension: result_rows {
    type: number
    sql: ${TABLE}.RESULT_ROWS ;;
  }

  dimension: result_size_bytes {
    type: number
    sql: ${TABLE}.RESULT_SIZE_BYTES ;;
  }

  dimension: time_to_live_without_touch {
    type: number
    sql: ${TABLE}.TIME_TO_LIVE_WITHOUT_TOUCH ;;
  }

  dimension: touch_count {
    type: number
    sql: ${TABLE}.TOUCH_COUNT ;;
  }

  dimension_group: touched {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.TOUCHED_AT ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.TTL ;;
  }

  measure: count {
    type: count
    drill_fields: [id, node.hostname, node.prev_node_id]
  }
}
