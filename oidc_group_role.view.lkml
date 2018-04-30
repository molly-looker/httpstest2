view: oidc_group_role {
  sql_table_name: PUBLIC.OIDC_GROUP_ROLE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: oidc_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OIDC_GROUP_ID ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ROLE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, oidc_group.id, oidc_group.name, role.id, role.name]
  }
}
