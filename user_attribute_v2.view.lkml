view: user_attribute_v2 {
  sql_table_name: PUBLIC.USER_ATTRIBUTE_V2 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: default_value {
    type: string
    sql: ${TABLE}.DEFAULT_VALUE ;;
  }

  dimension: is_system {
    type: yesno
    sql: ${TABLE}.IS_SYSTEM ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.LABEL ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  dimension: user_can_edit {
    type: yesno
    sql: ${TABLE}.USER_CAN_EDIT ;;
  }

  dimension: user_can_view {
    type: yesno
    sql: ${TABLE}.USER_CAN_VIEW ;;
  }

  dimension: value_is_hidden {
    type: yesno
    sql: ${TABLE}.VALUE_IS_HIDDEN ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
