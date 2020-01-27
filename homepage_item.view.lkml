view: homepage_item {
  sql_table_name: PUBLIC.HOMEPAGE_ITEM ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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

  dimension: custom_description {
    type: string
    sql: ${TABLE}.CUSTOM_DESCRIPTION ;;
  }

  dimension: custom_title {
    type: string
    sql: ${TABLE}.CUSTOM_TITLE ;;
  }

  dimension: custom_url {
    type: string
    sql: ${TABLE}.CUSTOM_URL ;;
  }

  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DASHBOARD_ID ;;
  }

  dimension: has_custom_image {
    type: yesno
    sql: ${TABLE}.HAS_CUSTOM_IMAGE ;;
  }

  dimension: homepage_section_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.HOMEPAGE_SECTION_ID ;;
  }

  dimension: look_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LOOK_ID ;;
  }

  dimension: lookml_dashboard_id {
    type: string
    sql: ${TABLE}.LOOKML_DASHBOARD_ID ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}."ORDER" ;;
  }

  dimension: show_description {
    type: yesno
    sql: ${TABLE}.SHOW_DESCRIPTION ;;
  }

  dimension: show_image {
    type: yesno
    sql: ${TABLE}.SHOW_IMAGE ;;
  }

  dimension: show_title {
    type: yesno
    sql: ${TABLE}.SHOW_TITLE ;;
  }

  dimension: show_url {
    type: yesno
    sql: ${TABLE}.SHOW_URL ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.UPDATED_AT ;;
  }

  dimension: use_custom_description {
    type: yesno
    sql: ${TABLE}.USE_CUSTOM_DESCRIPTION ;;
  }

  dimension: use_custom_image {
    type: yesno
    sql: ${TABLE}.USE_CUSTOM_IMAGE ;;
  }

  dimension: use_custom_title {
    type: yesno
    sql: ${TABLE}.USE_CUSTOM_TITLE ;;
  }

  dimension: use_custom_url {
    type: yesno
    sql: ${TABLE}.USE_CUSTOM_URL ;;
  }

  measure: count {
    type: count
    drill_fields: [id, dashboard.id, look.id, homepage_section.id]
  }
}
