view: credentials_looker_openid {
  sql_table_name: PUBLIC.CREDENTIALS_LOOKER_OPENID ;;

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

  dimension_group: last_login {
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
    sql: ${TABLE}.LAST_LOGIN_AT ;;
  }

  dimension: last_login_ip {
    type: string
    sql: ${TABLE}.LAST_LOGIN_IP ;;
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
