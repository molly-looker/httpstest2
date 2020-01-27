view: saml_user_attribute_attribute {
  sql_table_name: PUBLIC.SAML_USER_ATTRIBUTE_ATTRIBUTE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: saml_user_attribute_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SAML_USER_ATTRIBUTE_ID ;;
  }

  dimension: user_attribute_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ATTRIBUTE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, saml_user_attribute.name, saml_user_attribute.id, user_attribute.id]
  }
}
