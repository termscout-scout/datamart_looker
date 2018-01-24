view: ods_active_date {
  sql_table_name: test.ods_active_date ;;

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

  dimension: day_of_month_id {
    type: number
    sql: ${TABLE}.day_of_month_id ;;
  }

  dimension: day_of_week_id {
    type: number
    sql: ${TABLE}.day_of_week_id ;;
  }

  dimension: day_of_year_id {
    type: number
    sql: ${TABLE}.day_of_year_id ;;
  }

  dimension: month_descr {
    type: string
    sql: ${TABLE}.month_descr ;;
  }

  dimension: month_id {
    type: number
    sql: ${TABLE}.month_id ;;
  }

  dimension: qtr_descr {
    type: string
    sql: ${TABLE}.qtr_descr ;;
  }

  dimension: qtr_id {
    type: number
    sql: ${TABLE}.qtr_id ;;
  }

  dimension: week_id {
    type: number
    sql: ${TABLE}.week_id ;;
  }

  dimension: year_id {
    type: number
    sql: ${TABLE}.year_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
