view: ods_company {
  sql_table_name: test.ods_company ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: co_display_name {
    type: string
    sql: ${TABLE}.co_display_name ;;
  }

  dimension: co_name {
    type: string
    sql: ${TABLE}.co_name ;;
  }

  dimension: company_phone {
    type: string
    sql: ${TABLE}.company_phone ;;
  }

  dimension: company_url {
    type: string
    sql: ${TABLE}.company_url ;;
  }

  dimension: contact_us_url {
    type: string
    sql: ${TABLE}.contact_us_url ;;
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
    sql: ${TABLE}.created_at ;;
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: email_template {
    type: string
    sql: ${TABLE}.email_template ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }

  dimension: is_holding_company {
    type: yesno
    sql: ${TABLE}.is_holding_company ;;
  }

  dimension_group: last_qualified {
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
    sql: ${TABLE}.last_qualified_at ;;
  }

  dimension_group: last_spidered {
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
    sql: ${TABLE}.last_spidered_at ;;
  }

  dimension: leadership_url {
    type: string
    sql: ${TABLE}.leadership_url ;;
  }

  dimension: linked_in_url {
    type: string
    sql: ${TABLE}.linked_in_url ;;
  }

  dimension_group: ods_dt_added {
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
    sql: ${TABLE}.ods_dt_added ;;
  }

  dimension_group: ods_dt_updated {
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
    sql: ${TABLE}.ods_dt_updated ;;
  }

  dimension: original_source {
    type: string
    sql: ${TABLE}.original_source ;;
  }

  dimension: search_name {
    type: string
    sql: ${TABLE}.search_name ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension_group: source_ts {
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
    sql: ${TABLE}.source_ts ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: state_of_incorporation {
    type: string
    sql: ${TABLE}.state_of_incorporation ;;
  }

  dimension: twitter_feed_url {
    type: string
    sql: ${TABLE}.twitter_feed_url ;;
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [id, co_name, source_name, co_display_name, search_name]
  }
}
