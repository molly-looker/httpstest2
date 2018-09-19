view: look {
  sql_table_name: PUBLIC.LOOK ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: content_metadata_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CONTENT_METADATA_ID ;;
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

  dimension: deleter_id {
    type: number
    sql: ${TABLE}.DELETER_ID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: is_run_on_load {
    type: yesno
    sql: ${TABLE}.IS_RUN_ON_LOAD ;;
  }

  dimension: last_updater_id {
    type: number
    sql: ${TABLE}.LAST_UPDATER_ID ;;
  }

  dimension: public {
    type: yesno
    sql: ${TABLE}.PUBLIC ;;
  }

  dimension: public_slug {
    type: string
    sql: ${TABLE}.PUBLIC_SLUG ;;
  }

  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QUERY_ID ;;
  }

  dimension: space_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SPACE_ID ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
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
      content_metadata.id,
      space.name,
      space.id,
      query.id,
      user.dev_branch_name,
      user.last_name,
      user.first_name,
      user.id,
      content_favorite.count,
      content_metadata.count,
      dashboard_element.count,
      history.count,
      homepage_item.count,
      scheduled_job.count,
      scheduled_plan.count,
      thumbnail_image.count
    ]
  }
}
