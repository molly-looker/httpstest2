view: merge_query {
  sql_table_name: PUBLIC.MERGE_QUERY ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: column_limit {
    type: number
    sql: ${TABLE}.COLUMN_LIMIT ;;
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

  dimension: dynamic_fields {
    type: string
    sql: ${TABLE}.DYNAMIC_FIELDS ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.HASH ;;
  }

  dimension: pivots {
    type: string
    sql: ${TABLE}.PIVOTS ;;
  }

  dimension: sorts {
    type: string
    sql: ${TABLE}.SORTS ;;
  }

  dimension: total {
    type: yesno
    sql: ${TABLE}.TOTAL ;;
  }

  dimension: vis_config {
    type: string
    sql: ${TABLE}.VIS_CONFIG ;;
  }

  measure: count {
    type: count
    drill_fields: [id, merge_query_source_query.count, result_maker.count]
  }
}
