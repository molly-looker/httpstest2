view: scheduled_job_destination {
  sql_table_name: PUBLIC.SCHEDULED_JOB_DESTINATION ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.ADDRESS ;;
  }

  dimension: apply_formatting {
    type: yesno
    sql: ${TABLE}.APPLY_FORMATTING ;;
  }

  dimension: apply_vis {
    type: yesno
    sql: ${TABLE}.APPLY_VIS ;;
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

  dimension: format {
    type: string
    sql: ${TABLE}.FORMAT ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.MESSAGE ;;
  }

  dimension: scheduled_job_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SCHEDULED_JOB_ID ;;
  }

  dimension: scheduled_plan_destination_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SCHEDULED_PLAN_DESTINATION_ID ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.SLUG ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [id, scheduled_job.id, scheduled_job.name, scheduled_plan_destination.id]
  }
}
