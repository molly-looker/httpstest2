view: embed_nonce {
  sql_table_name: PUBLIC.EMBED_NONCE ;;

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

  dimension: external_user_id {
    type: string
    sql: ${TABLE}.EXTERNAL_USER_ID ;;
  }

  dimension: nonce {
    type: string
    sql: ${TABLE}.NONCE ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
