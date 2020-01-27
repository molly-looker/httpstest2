view: ldap_config_default_new_user_group {
  sql_table_name: PUBLIC.LDAP_CONFIG_DEFAULT_NEW_USER_GROUP ;;

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

  dimension: ldap_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LDAP_CONFIG_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      ldap_config.encrypted_auth_username,
      ldap_config.id,
      ldap_config.user_attribute_map_last_name,
      ldap_config.user_attribute_map_first_name,
      group.name,
      group.id
    ]
  }
}
