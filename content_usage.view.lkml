view: content_usage {
  sql_table_name: PUBLIC.CONTENT_USAGE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: api_count {
    type: number
    sql: ${TABLE}.API_COUNT ;;
  }

  dimension: content_id {
    type: string
    sql: ${TABLE}.CONTENT_ID ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}.CONTENT_TYPE ;;
  }

  dimension: embed_count {
    type: number
    sql: ${TABLE}.EMBED_COUNT ;;
  }

  dimension: favorite_count {
    type: number
    sql: ${TABLE}.FAVORITE_COUNT ;;
  }

  dimension_group: last_accessed {
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
    sql: ${TABLE}.LAST_ACCESSED_AT ;;
  }

  dimension: other_count {
    type: number
    sql: ${TABLE}.OTHER_COUNT ;;
  }

  dimension: prefetch_count {
    type: number
    sql: ${TABLE}.PREFETCH_COUNT ;;
  }

  dimension: public_count {
    type: number
    sql: ${TABLE}.PUBLIC_COUNT ;;
  }

  dimension: schedule_count {
    type: number
    sql: ${TABLE}.SCHEDULE_COUNT ;;
  }

  dimension: total_count {
    type: number
    sql: ${TABLE}.TOTAL_COUNT ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
