view: f_daily_detail {
  sql_table_name: test.f_daily_detail ;;

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: contact_id {
    type: number
    sql: ${TABLE}.contact_id ;;
  }

  dimension: data_source_id {
    type: number
    sql: ${TABLE}.data_source_id ;;
  }

  dimension_group: day_id {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.day_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
