view: f_daily_src {
  sql_table_name: test.f_daily_src ;;

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

  dimension: m_nbr_companies {
    type: number
    sql: ${TABLE}.m_nbr_companies ;;
  }

  dimension: m_nbr_contacts {
    type: number
    sql: ${TABLE}.m_nbr_contacts ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
