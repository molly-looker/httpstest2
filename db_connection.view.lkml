view: db_connection {
  sql_table_name: PUBLIC.DB_CONNECTION ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: after_connect_statements {
    type: string
    sql: ${TABLE}.AFTER_CONNECT_STATEMENTS ;;
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

  dimension: database {
    type: string
    sql: ${TABLE}.DATABASE ;;
  }

  dimension: db_timezone {
    type: string
    sql: ${TABLE}.DB_TIMEZONE ;;
  }

  dimension: dialect {
    type: string
    sql: ${TABLE}.DIALECT ;;
  }

  dimension: encrypted_private_key {
    type: string
    sql: ${TABLE}.ENCRYPTED_PRIVATE_KEY ;;
  }

  dimension: example {
    type: yesno
    sql: ${TABLE}.EXAMPLE ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.HOST ;;
  }

  dimension: jdbc_additional_params {
    type: string
    sql: ${TABLE}.JDBC_ADDITIONAL_PARAMS ;;
  }

  dimension: last_reap_at {
    type: number
    sql: ${TABLE}.LAST_REAP_AT ;;
  }

  dimension: last_regen_at {
    type: number
    sql: ${TABLE}.LAST_REGEN_AT ;;
  }

  dimension: maintenance_cron {
    type: string
    sql: ${TABLE}.MAINTENANCE_CRON ;;
  }

  dimension: max_billing_gigabytes {
    type: string
    sql: ${TABLE}.MAX_BILLING_GIGABYTES ;;
  }

  dimension: max_billing_tier {
    type: number
    sql: ${TABLE}.MAX_BILLING_TIER ;;
  }

  dimension: max_connections {
    type: number
    sql: ${TABLE}.MAX_CONNECTIONS ;;
  }

  dimension: misc_field {
    type: string
    sql: ${TABLE}.MISC_FIELD ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.PASSWORD ;;
  }

  dimension: pool_timeout {
    type: number
    sql: ${TABLE}.POOL_TIMEOUT ;;
  }

  dimension: port {
    type: string
    sql: ${TABLE}.PORT ;;
  }

  dimension: query_timezone {
    type: string
    sql: ${TABLE}.QUERY_TIMEZONE ;;
  }

  dimension: reg_key {
    type: string
    sql: ${TABLE}.REG_KEY ;;
  }

  dimension: schema {
    type: string
    sql: ${TABLE}.SCHEMA ;;
  }

  dimension_group: schema_busted {
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
    sql: ${TABLE}.SCHEMA_BUSTED_AT ;;
  }

  dimension: sql_runner_precache_tables {
    type: yesno
    sql: ${TABLE}.SQL_RUNNER_PRECACHE_TABLES ;;
  }

  dimension: ssh_forward {
    type: yesno
    sql: ${TABLE}.SSH_FORWARD ;;
  }

  dimension: ssh_host {
    type: string
    sql: ${TABLE}.SSH_HOST ;;
  }

  dimension: ssh_port {
    type: number
    sql: ${TABLE}.SSH_PORT ;;
  }

  dimension: ssh_remote_host {
    type: string
    sql: ${TABLE}.SSH_REMOTE_HOST ;;
  }

  dimension: ssh_remote_port {
    type: number
    sql: ${TABLE}.SSH_REMOTE_PORT ;;
  }

  dimension: ssh_username {
    type: string
    sql: ${TABLE}.SSH_USERNAME ;;
  }

  dimension: ssl {
    type: yesno
    sql: ${TABLE}.SSL ;;
  }

  dimension: tmp_db_name {
    type: string
    sql: ${TABLE}.TMP_DB_NAME ;;
  }

  dimension: user_attribute_fields {
    type: string
    sql: ${TABLE}.USER_ATTRIBUTE_FIELDS ;;
  }

  dimension: user_db_credentials {
    type: yesno
    sql: ${TABLE}.USER_DB_CREDENTIALS ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.USERNAME ;;
  }

  dimension: uses_tns {
    type: yesno
    sql: ${TABLE}.USES_TNS ;;
  }

  dimension: verify_ssl {
    type: yesno
    sql: ${TABLE}.VERIFY_SSL ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      tmp_db_name,
      ssh_username,
      name,
      username,
      user.dev_branch_name,
      user.last_name,
      user.first_name,
      user.id,
      db_connection_override.count,
      lookml_model_db_connection.count,
      upload_table.count
    ]
  }
}
