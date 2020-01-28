view: db_credentials {
  sql_table_name: PUBLIC.DB_CREDENTIALS ;;

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

  dimension: encrypted_password {
    type: string
    sql: ${TABLE}.ENCRYPTED_PASSWORD ;;
  }

  dimension: encrypted_username {
    type: string
    sql: ${TABLE}.ENCRYPTED_USERNAME ;;
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
      encrypted_username,
      user.dev_branch_name,
      user.last_name,
      user.first_name,
      user.id
    ]
  }
}
