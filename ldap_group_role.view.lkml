view: ldap_group_role {
  sql_table_name: PUBLIC.LDAP_GROUP_ROLE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: ldap_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LDAP_GROUP_ID ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ROLE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, ldap_group.name, ldap_group.id, role.id, role.name]
  }
}
