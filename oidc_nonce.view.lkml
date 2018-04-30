view: oidc_nonce {
  sql_table_name: PUBLIC.OIDC_NONCE ;;

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

  dimension: nonce {
    type: string
    sql: ${TABLE}.NONCE ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: used {
    type: yesno
    sql: ${TABLE}.USED ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
