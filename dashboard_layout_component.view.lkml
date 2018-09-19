view: dashboard_layout_component {
  sql_table_name: PUBLIC.DASHBOARD_LAYOUT_COMPONENT ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: column {
    type: number
    sql: ${TABLE}."COLUMN" ;;
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

  dimension: dashboard_element_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DASHBOARD_ELEMENT_ID ;;
  }

  dimension: dashboard_layout_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DASHBOARD_LAYOUT_ID ;;
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

  dimension: height {
    type: number
    sql: ${TABLE}.HEIGHT ;;
  }

  dimension: lookml_link_id {
    type: string
    sql: ${TABLE}.LOOKML_LINK_ID ;;
  }

  dimension: row {
    type: number
    sql: ${TABLE}."ROW" ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.WIDTH ;;
  }

  measure: count {
    type: count
    drill_fields: [id, dashboard_element.id, dashboard_layout.id]
  }
}
