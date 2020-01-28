view: embed_config {
  sql_table_name: PUBLIC.EMBED_CONFIG ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: domain_whitelist {
    type: string
    sql: ${TABLE}.DOMAIN_WHITELIST ;;
  }

  dimension: sso_auth_enabled {
    type: yesno
    sql: ${TABLE}.SSO_AUTH_ENABLED ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
