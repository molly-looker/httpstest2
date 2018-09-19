view: user_attribute_group_value {
  sql_table_name: PUBLIC.USER_ATTRIBUTE_GROUP_VALUE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GROUP_ID ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}."RANK" ;;
  }

  dimension: user_attribute_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ATTRIBUTE_ID ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}."VALUE" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_attribute.id, group.name, group.id]
  }
}
