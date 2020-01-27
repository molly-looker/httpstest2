view: credentials_email {
  sql_table_name: PUBLIC.CREDENTIALS_EMAIL ;;

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

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: encrypted_password {
    type: string
    sql: ${TABLE}.ENCRYPTED_PASSWORD ;;
  }

  dimension: last_login_attempt_id {
    type: number
    sql: ${TABLE}.LAST_LOGIN_ATTEMPT_ID ;;
  }

  dimension_group: logged_in {
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
    sql: ${TABLE}.LOGGED_IN_AT ;;
  }

  dimension_group: password_reset_sent {
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
    sql: ${TABLE}.PASSWORD_RESET_SENT_AT ;;
  }

  dimension: password_reset_token {
    type: string
    sql: ${TABLE}.PASSWORD_RESET_TOKEN ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.last_name, user.first_name, user.id]
  }
}
