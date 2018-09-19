view: ldap_user_attribute {
  sql_table_name: PUBLIC.LDAP_USER_ATTRIBUTE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: ldap_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LDAP_CONFIG_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: required {
    type: yesno
    sql: ${TABLE}.REQUIRED ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      ldap_config.encrypted_auth_username,
      ldap_config.id,
      ldap_config.user_attribute_map_last_name,
      ldap_config.user_attribute_map_first_name,
      ldap_user_attribute_attribute.count
    ]
  }
}
