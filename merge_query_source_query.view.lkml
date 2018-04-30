view: merge_query_source_query {
  sql_table_name: PUBLIC.MERGE_QUERY_SOURCE_QUERY ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: merge_fields {
    type: string
    sql: ${TABLE}.MERGE_FIELDS ;;
  }

  dimension: merge_query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MERGE_QUERY_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QUERY_ID ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}."RANK" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, query.id, merge_query.id]
  }
}
