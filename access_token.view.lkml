view: access_token {
  sql_table_name: PUBLIC.ACCESS_TOKEN ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: credentials_api3_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CREDENTIALS_API3_ID ;;
  }

  dimension: encrypted_code {
    type: string
    sql: ${TABLE}.ENCRYPTED_CODE ;;
  }

  dimension: encrypted_token {
    type: string
    sql: ${TABLE}.ENCRYPTED_TOKEN ;;
  }

  dimension_group: expires {
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
    sql: ${TABLE}.EXPIRES_AT ;;
  }

  dimension: grant_type {
    type: string
    sql: ${TABLE}.GRANT_TYPE ;;
  }

  dimension: resource_owner_id {
    type: number
    sql: ${TABLE}.RESOURCE_OWNER_ID ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ROLE_ID ;;
  }

  dimension: session_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SESSION_ID ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: user_overrides_workspace {
    type: yesno
    sql: ${TABLE}.USER_OVERRIDES_WORKSPACE ;;
  }

  dimension: workspace_id {
    type: string
    sql: ${TABLE}.WORKSPACE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      credentials_api3.id,
      role.id,
      role.name,
      user.dev_branch_name,
      user.last_name,
      user.first_name,
      user.id,
      session.id,
      session.count
    ]
  }
}
