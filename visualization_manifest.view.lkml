view: visualization_manifest {
  sql_table_name: PUBLIC.VISUALIZATION_MANIFEST ;;

  dimension: id {
    primary_key: yes
    type: string
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

  dimension: dependencies {
    type: string
    sql: ${TABLE}.DEPENDENCIES ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.LABEL ;;
  }

  dimension: main {
    type: string
    sql: ${TABLE}.MAIN ;;
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

  dimension: vis_id {
    type: string
    sql: ${TABLE}.VIS_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
