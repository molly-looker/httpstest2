view: dashboard_filter {
  sql_table_name: PUBLIC.DASHBOARD_FILTER ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: allow_multiple_values {
    type: yesno
    sql: ${TABLE}.ALLOW_MULTIPLE_VALUES ;;
  }

  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DASHBOARD_ID ;;
  }

  dimension: default_value {
    type: string
    sql: ${TABLE}.DEFAULT_VALUE ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.DELETED_AT ;;
  }

  dimension: dimension {
    type: string
    sql: ${TABLE}.DIMENSION ;;
  }

  dimension: explore {
    type: string
    sql: ${TABLE}.EXPLORE ;;
  }

  dimension: listens_to_filters_json {
    type: string
    sql: ${TABLE}.LISTENS_TO_FILTERS_JSON ;;
  }

  dimension: lookml_link_id {
    type: string
    sql: ${TABLE}.LOOKML_LINK_ID ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.MODEL_NAME ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: required {
    type: yesno
    sql: ${TABLE}.REQUIRED ;;
  }

  dimension: row {
    type: number
    sql: ${TABLE}."ROW" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, model_name, dashboard.id]
  }
}
