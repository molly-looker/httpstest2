view: ldap_user_attribute_attribute {
  sql_table_name: PUBLIC.LDAP_USER_ATTRIBUTE_ATTRIBUTE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: ldap_user_attribute_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LDAP_USER_ATTRIBUTE_ID ;;
  }

  dimension: user_attribute_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ATTRIBUTE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_attribute.id, ldap_user_attribute.name, ldap_user_attribute.id]
  }
}
