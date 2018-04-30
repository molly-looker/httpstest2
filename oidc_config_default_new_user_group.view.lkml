view: oidc_config_default_new_user_group {
  sql_table_name: PUBLIC.OIDC_CONFIG_DEFAULT_NEW_USER_GROUP ;;

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

  dimension: oidc_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OIDC_CONFIG_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      oidc_config.id,
      oidc_config.user_attribute_map_first_name,
      oidc_config.user_attribute_map_last_name,
      group.name,
      group.id
    ]
  }
}
