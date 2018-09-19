view: saml_group_role {
  sql_table_name: PUBLIC.SAML_GROUP_ROLE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ROLE_ID ;;
  }

  dimension: saml_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SAML_GROUP_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, role.id, role.name, saml_group.name, saml_group.id]
  }
}
