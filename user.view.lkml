view: user {
  sql_table_name: PUBLIC.USER ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: browser_count {
    type: number
    sql: ${TABLE}.BROWSER_COUNT ;;
  }

  dimension: chat_disabled {
    type: yesno
    sql: ${TABLE}.CHAT_DISABLED ;;
  }

  dimension: chat_popover {
    type: yesno
    sql: ${TABLE}.CHAT_POPOVER ;;
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

  dimension: dev_branch_name {
    type: string
    sql: ${TABLE}.DEV_BRANCH_NAME ;;
  }

  dimension: dev_mode {
    type: yesno
    sql: ${TABLE}.DEV_MODE ;;
  }

  dimension: dev_mode_user_id {
    type: number
    sql: ${TABLE}.DEV_MODE_USER_ID ;;
  }

  dimension: editor_keybinding_mode {
    type: string
    sql: ${TABLE}.EDITOR_KEYBINDING_MODE ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: eula_accepted {
    type: yesno
    sql: ${TABLE}.EULA_ACCEPTED ;;
  }

  dimension_group: eula_accepted {
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
    sql: ${TABLE}.EULA_ACCEPTED_TIME ;;
  }

  dimension: eula_accepted_version {
    type: string
    sql: ${TABLE}.EULA_ACCEPTED_VERSION ;;
  }

  dimension: external_avatar_url {
    type: string
    sql: ${TABLE}.EXTERNAL_AVATAR_URL ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension: home_space_id {
    type: string
    sql: ${TABLE}.HOME_SPACE_ID ;;
  }

  dimension: is_admin {
    type: yesno
    sql: ${TABLE}.IS_ADMIN ;;
  }

  dimension: is_disabled {
    type: yesno
    sql: ${TABLE}.IS_DISABLED ;;
  }

  dimension: is_looker_employee {
    type: yesno
    sql: ${TABLE}.IS_LOOKER_EMPLOYEE ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.LOCALE ;;
  }

  dimension: marketing_email_updates {
    type: yesno
    sql: ${TABLE}.MARKETING_EMAIL_UPDATES ;;
  }

  dimension: models {
    type: string
    sql: ${TABLE}.MODELS ;;
  }

  dimension: models_dir {
    type: string
    sql: ${TABLE}.MODELS_DIR ;;
  }

  dimension: outgoing_access_token_id {
    type: number
    sql: ${TABLE}.OUTGOING_ACCESS_TOKEN_ID ;;
  }

  dimension: release_email_updates {
    type: yesno
    sql: ${TABLE}.RELEASE_EMAIL_UPDATES ;;
  }

  dimension: sticky_workspace_id {
    type: string
    sql: ${TABLE}.STICKY_WORKSPACE_ID ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.TIMEZONE ;;
  }

  dimension: ui_state {
    type: string
    sql: ${TABLE}.UI_STATE ;;
  }

  dimension: version_set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.VERSION_SET_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      dev_branch_name,
      last_name,
      first_name,
      version_set.id,
      access_token.count,
      api_nonce.count,
      authenticated_download.count,
      content_favorite.count,
      content_metadata_group_user.count,
      content_view.count,
      cookie_consent.count,
      credentials_api.count,
      credentials_api3.count,
      credentials_email.count,
      credentials_embed.count,
      credentials_ephemeral.count,
      credentials_google.count,
      credentials_ldap.count,
      credentials_looker_openid.count,
      credentials_oidc.count,
      credentials_saml.count,
      credentials_totp.count,
      dashboard.count,
      db_connection.count,
      db_credentials.count,
      embed_secret.count,
      event.count,
      group_user.count,
      history.count,
      login.count,
      look.count,
      render_job.count,
      role_user.count,
      scheduled_job.count,
      scheduled_plan.count,
      session.count,
      space_user.count,
      sql_query.count,
      upload_table.count,
      user_access_filter.count,
      user_attribute.count,
      user_attribute_user_value.count,
      user_direct_role.count
    ]
  }
}
