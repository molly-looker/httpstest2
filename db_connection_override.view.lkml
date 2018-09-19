view: db_connection_override {
  sql_table_name: PUBLIC.DB_CONNECTION_OVERRIDE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: after_connect_statements {
    type: string
    sql: ${TABLE}.AFTER_CONNECT_STATEMENTS ;;
  }

  dimension: context {
    type: string
    sql: ${TABLE}.CONTEXT ;;
  }

  dimension: database {
    type: string
    sql: ${TABLE}.DATABASE ;;
  }

  dimension: db_connection_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DB_CONNECTION_ID ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.HOST ;;
  }

  dimension: jdbc_additional_params {
    type: string
    sql: ${TABLE}.JDBC_ADDITIONAL_PARAMS ;;
  }

  dimension: misc_field {
    type: string
    sql: ${TABLE}.MISC_FIELD ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.PASSWORD ;;
  }

  dimension: port {
    type: string
    sql: ${TABLE}.PORT ;;
  }

  dimension: schema {
    type: string
    sql: ${TABLE}.SCHEMA ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.USERNAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      username,
      db_connection.tmp_db_name,
      db_connection.ssh_username,
      db_connection.name,
      db_connection.username,
      db_connection.id
    ]
  }
}
