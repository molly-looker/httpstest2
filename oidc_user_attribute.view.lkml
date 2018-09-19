view: oidc_user_attribute {
  sql_table_name: PUBLIC.OIDC_USER_ATTRIBUTE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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
      oidc_config.id,
      oidc_config.user_attribute_map_first_name,
      oidc_config.user_attribute_map_last_name,
      oidc_user_attribute_attribute.count
    ]
  }
}
