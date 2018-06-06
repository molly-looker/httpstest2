view: saml_nonce {
  sql_table_name: PUBLIC.SAML_NONCE ;;

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

  dimension: response_id {
    type: string
    sql: ${TABLE}.RESPONSE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
