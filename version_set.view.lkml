view: version_set {
  sql_table_name: PUBLIC.VERSION_SET ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: current_version {
    type: string
    sql: ${TABLE}.CURRENT_VERSION ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.HASH ;;
  }

  dimension: versions {
    type: string
    sql: ${TABLE}.VERSIONS ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.count]
  }
}
