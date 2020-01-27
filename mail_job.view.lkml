view: mail_job {
  sql_table_name: PUBLIC.MAIL_JOB ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: attachment_file {
    type: string
    sql: ${TABLE}.ATTACHMENT_FILE ;;
  }

  dimension: attachment_file_name {
    type: string
    sql: ${TABLE}.ATTACHMENT_FILE_NAME ;;
  }

  dimension: attempts {
    type: number
    sql: ${TABLE}.ATTEMPTS ;;
  }

  dimension: bcc {
    type: string
    sql: ${TABLE}.BCC ;;
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

  dimension: encrypted_raw {
    type: string
    sql: ${TABLE}.ENCRYPTED_RAW ;;
  }

  dimension: encrypted_raw_hash {
    type: string
    sql: ${TABLE}.ENCRYPTED_RAW_HASH ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.HASH ;;
  }

  dimension: html_body {
    type: string
    sql: ${TABLE}.HTML_BODY ;;
  }

  dimension_group: last_attempted {
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
    sql: ${TABLE}.LAST_ATTEMPTED_AT ;;
  }

  dimension: last_error {
    type: string
    sql: ${TABLE}.LAST_ERROR ;;
  }

  dimension_group: next_attempt {
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
    sql: ${TABLE}.NEXT_ATTEMPT_AT ;;
  }

  dimension: raw {
    type: string
    sql: ${TABLE}.RAW ;;
  }

  dimension: raw_cache_key {
    type: string
    sql: ${TABLE}.RAW_CACHE_KEY ;;
  }

  dimension: reply_to {
    type: string
    sql: ${TABLE}.REPLY_TO ;;
  }

  dimension: scheduled_task_id {
    type: number
    sql: ${TABLE}.SCHEDULED_TASK_ID ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.SUBJECT ;;
  }

  dimension: to {
    type: string
    sql: ${TABLE}."TO" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [id, attachment_file_name]
  }
}
