view: ldap_config {
  sql_table_name: PUBLIC.LDAP_CONFIG ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.ACTIVE ;;
  }

  dimension: alternate_email_login_allowed {
    type: yesno
    sql: ${TABLE}.ALTERNATE_EMAIL_LOGIN_ALLOWED ;;
  }

  dimension: auth_requires_role {
    type: yesno
    sql: ${TABLE}.AUTH_REQUIRES_ROLE ;;
  }

  dimension: connection_host {
    type: string
    sql: ${TABLE}.CONNECTION_HOST ;;
  }

  dimension: connection_port {
    type: string
    sql: ${TABLE}.CONNECTION_PORT ;;
  }

  dimension: connection_tls {
    type: yesno
    sql: ${TABLE}.CONNECTION_TLS ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.ENABLED ;;
  }

  dimension: encrypted_auth_password {
    type: string
    sql: ${TABLE}.ENCRYPTED_AUTH_PASSWORD ;;
  }

  dimension: encrypted_auth_username {
    type: string
    sql: ${TABLE}.ENCRYPTED_AUTH_USERNAME ;;
  }

  dimension: external_signon_url {
    type: string
    sql: ${TABLE}.EXTERNAL_SIGNON_URL ;;
  }

  dimension: force_no_page {
    type: yesno
    sql: ${TABLE}.FORCE_NO_PAGE ;;
  }

  dimension: groups_base_dn {
    type: string
    sql: ${TABLE}.GROUPS_BASE_DN ;;
  }

  dimension: groups_finder_type {
    type: string
    sql: ${TABLE}.GROUPS_FINDER_TYPE ;;
  }

  dimension: groups_member_attribute {
    type: string
    sql: ${TABLE}.GROUPS_MEMBER_ATTRIBUTE ;;
  }

  dimension: groups_objectclasses {
    type: string
    sql: ${TABLE}.GROUPS_OBJECTCLASSES ;;
  }

  dimension: groups_user_attribute {
    type: string
    sql: ${TABLE}.GROUPS_USER_ATTRIBUTE ;;
  }

  dimension: merge_new_users_by_email {
    type: yesno
    sql: ${TABLE}.MERGE_NEW_USERS_BY_EMAIL ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.MODIFIED_AT ;;
  }

  dimension: modified_by {
    type: number
    sql: ${TABLE}.MODIFIED_BY ;;
  }

  dimension: set_roles_from_groups {
    type: yesno
    sql: ${TABLE}.SET_ROLES_FROM_GROUPS ;;
  }

  dimension: user_attribute_map_email {
    type: string
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_EMAIL ;;
  }

  dimension: user_attribute_map_first_name {
    type: string
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_FIRST_NAME ;;
  }

  dimension: user_attribute_map_last_name {
    type: string
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_LAST_NAME ;;
  }

  dimension: user_attribute_map_ldap_id {
    type: string
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_LDAP_ID ;;
  }

  dimension: user_bind_base_dn {
    type: string
    sql: ${TABLE}.USER_BIND_BASE_DN ;;
  }

  dimension: user_custom_filter {
    type: string
    sql: ${TABLE}.USER_CUSTOM_FILTER ;;
  }

  dimension: user_id_attribute_names {
    type: string
    sql: ${TABLE}.USER_ID_ATTRIBUTE_NAMES ;;
  }

  dimension: user_objectclass {
    type: string
    sql: ${TABLE}.USER_OBJECTCLASS ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      encrypted_auth_username,
      user_attribute_map_last_name,
      user_attribute_map_first_name,
      ldap_config_default_new_user_group.count,
      ldap_config_default_new_user_role.count,
      ldap_group.count,
      ldap_user_attribute.count
    ]
  }
}
