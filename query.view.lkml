view: query {
  sql_table_name: PUBLIC.QUERY ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.CLIENT_ID ;;
  }

  dimension: column_limit {
    type: string
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

  dimension: fields {
    type: string
    sql: ${TABLE}.FIELDS ;;
  }

  dimension: fill_fields {
    type: string
    sql: ${TABLE}.FILL_FIELDS ;;
  }

  dimension: filter_config {
    type: string
    sql: ${TABLE}.FILTER_CONFIG ;;
  }

  dimension: filter_expression {
    type: string
    sql: ${TABLE}.FILTER_EXPRESSION ;;
  }

  dimension: filters {
    type: string
    sql: ${TABLE}.FILTERS ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.HASH ;;
  }

  dimension: limit {
    type: string
    sql: ${TABLE}.LIMIT ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.MODEL ;;
  }

  dimension: pivots {
    type: string
    sql: ${TABLE}.PIVOTS ;;
  }

  dimension: query_timezone {
    type: string
    sql: ${TABLE}.QUERY_TIMEZONE ;;
  }

  dimension: row_total {
    type: string
    sql: ${TABLE}.ROW_TOTAL ;;
  }

  dimension: runtime {
    type: number
    sql: ${TABLE}.RUNTIME ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.SLUG ;;
  }

  dimension: sorts {
    type: string
    sql: ${TABLE}.SORTS ;;
  }

  dimension: total {
    type: yesno
    sql: ${TABLE}.TOTAL ;;
  }

  dimension: view {
    type: string
    sql: ${TABLE}.VIEW ;;
  }

  dimension: vis_config {
    type: string
    sql: ${TABLE}.VIS_CONFIG ;;
  }

  dimension: visible_ui_sections {
    type: string
    sql: ${TABLE}.VISIBLE_UI_SECTIONS ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      dashboard_element.count,
      history.count,
      look.count,
      merge_query_source_query.count,
      result_maker.count,
      scheduled_job.count,
      scheduled_plan.count,
      slug.count
    ]
  }
}
