view: oidc_user_attribute_attribute {
  sql_table_name: PUBLIC.OIDC_USER_ATTRIBUTE_ATTRIBUTE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: oidc_user_attribute_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OIDC_USER_ATTRIBUTE_ID ;;
  }

  dimension: user_attribute_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ATTRIBUTE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_attribute.id, oidc_user_attribute.id, oidc_user_attribute.name]
  }
}
