view: permission_set {
  sql_table_name: PUBLIC.PERMISSION_SET ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: built_in {
    type: yesno
    sql: ${TABLE}.BUILT_IN ;;
  }

  dimension: embed {
    type: yesno
    sql: ${TABLE}.EMBED ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: permissions {
    type: string
    sql: ${TABLE}.PERMISSIONS ;;
  }

  dimension: unlimited {
    type: yesno
    sql: ${TABLE}.UNLIMITED ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, role.count]
  }
}
