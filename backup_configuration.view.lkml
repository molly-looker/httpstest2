view: backup_configuration {
  sql_table_name: PUBLIC.BACKUP_CONFIGURATION ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: custom_s3_bucket {
    type: string
    sql: ${TABLE}.CUSTOM_S3_BUCKET ;;
  }

  dimension: custom_s3_bucket_region {
    type: string
    sql: ${TABLE}.CUSTOM_S3_BUCKET_REGION ;;
  }

  dimension: encrypted_custom_s3_key {
    type: string
    sql: ${TABLE}.ENCRYPTED_CUSTOM_S3_KEY ;;
  }

  dimension: encrypted_custom_s3_secret {
    type: string
    sql: ${TABLE}.ENCRYPTED_CUSTOM_S3_SECRET ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
