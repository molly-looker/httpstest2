view: oidc_group {
  sql_table_name: PUBLIC.OIDC_GROUP ;;

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

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
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
      name,
      oidc_config.id,
      oidc_config.user_attribute_map_first_name,
      oidc_config.user_attribute_map_last_name,
      group.name,
      group.id,
      oidc_group_role.count
    ]
  }
}
