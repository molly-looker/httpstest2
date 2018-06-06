view: smtp_settings {
  sql_table_name: PUBLIC.SMTP_SETTINGS ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.ADDRESS ;;
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

  dimension: enable_starttls_auto {
    type: yesno
    sql: ${TABLE}.ENABLE_STARTTLS_AUTO ;;
  }

  dimension: encrypted_password {
    type: string
    sql: ${TABLE}.ENCRYPTED_PASSWORD ;;
  }

  dimension: encrypted_username {
    type: string
    sql: ${TABLE}.ENCRYPTED_USERNAME ;;
  }

  dimension: from {
    type: string
    sql: ${TABLE}."FROM" ;;
  }

  dimension: is_default {
    type: yesno
    sql: ${TABLE}.IS_DEFAULT ;;
  }

  dimension: port {
    type: number
    sql: ${TABLE}.PORT ;;
  }

  dimension: ssl_version {
    type: string
    sql: ${TABLE}.SSL_VERSION ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.UPDATED_AT ;;
  }

  measure: count {
    type: count
    drill_fields: [id, encrypted_username]
  }
}
