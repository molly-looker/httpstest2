view: group {
  sql_table_name: PUBLIC."GROUP" ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: can_add_to_content_metadata {
    type: yesno
    sql: ${TABLE}.CAN_ADD_TO_CONTENT_METADATA ;;
  }

  dimension: external_group_id {
    type: string
    sql: ${TABLE}.EXTERNAL_GROUP_ID ;;
  }

  dimension: externally_managed {
    type: yesno
    sql: ${TABLE}.EXTERNALLY_MANAGED ;;
  }

  dimension: externally_orphaned {
    type: yesno
    sql: ${TABLE}.EXTERNALLY_ORPHANED ;;
  }

  dimension: include_by_default {
    type: yesno
    sql: ${TABLE}.INCLUDE_BY_DEFAULT ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
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
      content_metadata_group_user.count,
      content_view.count,
      group_user.count,
      ldap_config_default_new_user_group.count,
      ldap_group.count,
      oidc_config_default_new_user_group.count,
      oidc_group.count,
      role_group.count,
      saml_config_default_new_user_group.count,
      saml_group.count,
      user_attribute_group_value.count
    ]
  }
}
