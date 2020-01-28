view: space {
  sql_table_name: PUBLIC.SPACE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: content_metadata_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CONTENT_METADATA_ID ;;
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

  dimension: creator_id {
    type: number
    sql: ${TABLE}.CREATOR_ID ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.DELETED_AT ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.EXTERNAL_ID ;;
  }

  dimension: is_embed {
    type: yesno
    sql: ${TABLE}.IS_EMBED ;;
  }

  dimension: is_embed_shared_root {
    type: yesno
    sql: ${TABLE}.IS_EMBED_SHARED_ROOT ;;
  }

  dimension: is_embed_users_root {
    type: yesno
    sql: ${TABLE}.IS_EMBED_USERS_ROOT ;;
  }

  dimension: is_personal {
    type: yesno
    sql: ${TABLE}.IS_PERSONAL ;;
  }

  dimension: is_personal_descendant {
    type: yesno
    sql: ${TABLE}.IS_PERSONAL_DESCENDANT ;;
  }

  dimension: is_shared_root {
    type: yesno
    sql: ${TABLE}.IS_SHARED_ROOT ;;
  }

  dimension: is_users_root {
    type: yesno
    sql: ${TABLE}.IS_USERS_ROOT ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.PARENT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      content_metadata.id,
      content_metadata.count,
      dashboard.count,
      look.count,
      space_user.count
    ]
  }
}
