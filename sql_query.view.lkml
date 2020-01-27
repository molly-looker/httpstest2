view: sql_query {
  sql_table_name: PUBLIC.SQL_QUERY ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: connection_id {
    type: string
    sql: ${TABLE}.CONNECTION_ID ;;
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

  dimension: hash {
    type: string
    sql: ${TABLE}.HASH ;;
  }

  dimension_group: last_run {
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
    sql: ${TABLE}.LAST_RUN_AT ;;
  }

  dimension: last_runtime {
    type: number
    sql: ${TABLE}.LAST_RUNTIME ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.MODEL_NAME ;;
  }

  dimension: result_set_metadata {
    type: string
    sql: ${TABLE}.RESULT_SET_METADATA ;;
  }

  dimension: run_count {
    type: number
    sql: ${TABLE}.RUN_COUNT ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.SLUG ;;
  }

  dimension: sql {
    type: string
    sql: ${TABLE}."SQL" ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      model_name,
      user.dev_branch_name,
      user.last_name,
      user.first_name,
      user.id,
      history.count
    ]
  }
}
