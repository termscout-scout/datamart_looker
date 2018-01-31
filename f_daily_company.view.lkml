view: f_daily_company {
  sql_table_name: test.f_daily_company ;;

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
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

  dimension: m_nbr_contacts_181d_365d {
    type: number
    sql: ${TABLE}.m_nbr_contacts_181d_365d ;;
  }

  dimension: m_nbr_contacts_90d {
    type: number
    sql: ${TABLE}.m_nbr_contacts_90d ;;
  }

  dimension: m_nbr_contacts_91d_180d {
    type: number
    sql: ${TABLE}.m_nbr_contacts_91d_180d ;;
  }

  dimension: m_nbr_contacts_gt365d {
    type: number
    sql: ${TABLE}.m_nbr_contacts_GT365d ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
