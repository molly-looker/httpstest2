view: credentials_google {
  sql_table_name: PUBLIC.CREDENTIALS_GOOGLE ;;

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

  dimension: domain {
    type: string
    sql: ${TABLE}.DOMAIN ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: google_user_id {
    type: string
    sql: ${TABLE}.GOOGLE_USER_ID ;;
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

  dimension: secret {
    type: string
    sql: ${TABLE}.SECRET ;;
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
