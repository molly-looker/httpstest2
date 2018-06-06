view: path_prefix {
  sql_table_name: PUBLIC.PATH_PREFIX ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: prefix {
    type: string
    sql: ${TABLE}.PREFIX ;;
  }

  dimension: sha {
    type: string
    sql: ${TABLE}.SHA ;;
  }

  measure: count {
    type: count
    drill_fields: [id, history.count]
  }
}
