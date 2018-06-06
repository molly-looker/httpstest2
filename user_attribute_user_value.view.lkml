view: user_attribute_user_value {
  sql_table_name: PUBLIC.USER_ATTRIBUTE_USER_VALUE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: user_attribute_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ATTRIBUTE_ID ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}."VALUE" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      user.dev_branch_name,
      user.last_name,
      user.first_name,
      user.id,
      user_attribute.id
    ]
  }
}
