view: dashboard_element {
  sql_table_name: PUBLIC.DASHBOARD_ELEMENT ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: body_text {
    type: string
    sql: ${TABLE}.BODY_TEXT ;;
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

  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DASHBOARD_ID ;;
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

  dimension: listen {
    type: string
    sql: ${TABLE}.LISTEN ;;
  }

  dimension: look_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LOOK_ID ;;
  }

  dimension: lookml_link_id {
    type: string
    sql: ${TABLE}.LOOKML_LINK_ID ;;
  }

  dimension: note_display {
    type: string
    sql: ${TABLE}.NOTE_DISPLAY ;;
  }

  dimension: note_state {
    type: string
    sql: ${TABLE}.NOTE_STATE ;;
  }

  dimension: note_text {
    type: string
    sql: ${TABLE}.NOTE_TEXT ;;
  }

  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QUERY_ID ;;
  }

  dimension: refresh_interval {
    type: string
    sql: ${TABLE}.REFRESH_INTERVAL ;;
  }

  dimension: result_maker_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.RESULT_MAKER_ID ;;
  }

  dimension: subtitle_text {
    type: string
    sql: ${TABLE}.SUBTITLE_TEXT ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  dimension: title_hidden {
    type: yesno
    sql: ${TABLE}.TITLE_HIDDEN ;;
  }

  dimension: title_text {
    type: string
    sql: ${TABLE}.TITLE_TEXT ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      dashboard.id,
      look.id,
      result_maker.id,
      query.id,
      dashboard_layout_component.count
    ]
  }
}
