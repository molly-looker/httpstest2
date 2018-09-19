view: scheduled_plan_destination {
  sql_table_name: PUBLIC.SCHEDULED_PLAN_DESTINATION ;;

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

  dimension: parameters {
    type: string
    sql: ${TABLE}.PARAMETERS ;;
  }

  dimension: s3_access_key_id {
    type: string
    sql: ${TABLE}.S3_ACCESS_KEY_ID ;;
  }

  dimension: s3_region {
    type: string
    sql: ${TABLE}.S3_REGION ;;
  }

  dimension: s3_secret_access_key {
    type: string
    sql: ${TABLE}.S3_SECRET_ACCESS_KEY ;;
  }

  dimension: scheduled_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SCHEDULED_PLAN_ID ;;
  }

  dimension: secret_parameters {
    type: string
    sql: ${TABLE}.SECRET_PARAMETERS ;;
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
    drill_fields: [id, scheduled_plan.name, scheduled_plan.id, scheduled_job_destination.count]
  }
}
