view: group_group {
  sql_table_name: PUBLIC.GROUP_GROUP ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: included_group_id {
    type: number
    sql: ${TABLE}.INCLUDED_GROUP_ID ;;
  }

  dimension: into_group_id {
    type: number
    sql: ${TABLE}.INTO_GROUP_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
