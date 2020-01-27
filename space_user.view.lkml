view: space_user {
  sql_table_name: PUBLIC.SPACE_USER ;;

  dimension: space_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SPACE_ID ;;
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
      user.dev_branch_name,
      user.last_name,
      user.first_name,
      user.id,
      space.name,
      space.id
    ]
  }
}
