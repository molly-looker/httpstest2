view: embed_secret {
  sql_table_name: PUBLIC.EMBED_SECRET ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: algorithm {
    type: string
    sql: ${TABLE}.ALGORITHM ;;
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

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.ENABLED ;;
  }

  dimension: encrypted_secret {
    type: string
    sql: ${TABLE}.ENCRYPTED_SECRET ;;
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
