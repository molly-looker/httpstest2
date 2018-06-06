view: saml_user_attribute {
  sql_table_name: PUBLIC.SAML_USER_ATTRIBUTE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: required {
    type: yesno
    sql: ${TABLE}.REQUIRED ;;
  }

  dimension: saml_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SAML_CONFIG_ID ;;
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
      saml_config.user_attribute_map_last_name,
      saml_config.user_attribute_map_first_name,
      saml_config.id,
      saml_user_attribute_attribute.count
    ]
  }
}
