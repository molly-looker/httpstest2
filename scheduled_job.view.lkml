view: scheduled_job {
  sql_table_name: PUBLIC.SCHEDULED_JOB ;;

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

  dimension: crontab {
    type: string
    sql: ${TABLE}.CRONTAB ;;
  }

  dimension: dashboard_filters {
    type: string
    sql: ${TABLE}.DASHBOARD_FILTERS ;;
  }

  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DASHBOARD_ID ;;
  }

  dimension: data_signature {
    type: string
    sql: ${TABLE}.DATA_SIGNATURE ;;
  }

  dimension: data_slug {
    type: string
    sql: ${TABLE}.DATA_SLUG ;;
  }

  dimension: datagroup {
    type: string
    sql: ${TABLE}.DATAGROUP ;;
  }

  dimension: filters_string {
    type: string
    sql: ${TABLE}.FILTERS_STRING ;;
  }

  dimension_group: finalized {
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
    sql: ${TABLE}.FINALIZED_AT ;;
  }

  dimension: include_links {
    type: yesno
    sql: ${TABLE}.INCLUDE_LINKS ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QUERY_ID ;;
  }

  dimension: require_change {
    type: yesno
    sql: ${TABLE}.REQUIRE_CHANGE ;;
  }

  dimension: require_no_results {
    type: yesno
    sql: ${TABLE}.REQUIRE_NO_RESULTS ;;
  }

  dimension: require_results {
    type: yesno
    sql: ${TABLE}.REQUIRE_RESULTS ;;
  }

  dimension: row_limit_reached {
    type: yesno
    sql: ${TABLE}.ROW_LIMIT_REACHED ;;
  }

  dimension: run_as_recipient {
    type: yesno
    sql: ${TABLE}.RUN_AS_RECIPIENT ;;
  }

  dimension: run_once {
    type: yesno
    sql: ${TABLE}.RUN_ONCE ;;
  }

  dimension: scheduled_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SCHEDULED_PLAN_ID ;;
  }

  dimension: send_all_results {
    type: yesno
    sql: ${TABLE}.SEND_ALL_RESULTS ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: status_detail {
    type: string
    sql: ${TABLE}.STATUS_DETAIL ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.TIMEZONE ;;
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
      name,
      query.id,
      scheduled_plan.name,
      scheduled_plan.id,
      user.dev_branch_name,
      user.last_name,
      user.first_name,
      user.id,
      look.id,
      dashboard.id,
      scheduled_job_destination.count,
      scheduled_job_stage.count
    ]
  }
}
