view: whitelabel_configuration {
  sql_table_name: PUBLIC.WHITELABEL_CONFIGURATION ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: allow_looker_links {
    type: yesno
    sql: ${TABLE}.ALLOW_LOOKER_LINKS ;;
  }

  dimension: allow_looker_mentions {
    type: yesno
    sql: ${TABLE}.ALLOW_LOOKER_MENTIONS ;;
  }

  dimension: default_title {
    type: string
    sql: ${TABLE}.DEFAULT_TITLE ;;
  }

  dimension: favicon_file {
    type: string
    sql: ${TABLE}.FAVICON_FILE ;;
  }

  dimension: logo_file {
    type: string
    sql: ${TABLE}.LOGO_FILE ;;
  }

  dimension: show_docs {
    type: yesno
    sql: ${TABLE}.SHOW_DOCS ;;
  }

  dimension: show_email_sub_options {
    type: yesno
    sql: ${TABLE}.SHOW_EMAIL_SUB_OPTIONS ;;
  }

  dimension: show_help_menu {
    type: yesno
    sql: ${TABLE}.SHOW_HELP_MENU ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
