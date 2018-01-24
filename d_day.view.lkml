view: d_day {
  sql_table_name: test.d_day ;;

  dimension_group: id {
    #X# primary_key:true
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
    sql: ${TABLE}.id ;;
  }

  dimension: day_of_wk_id {
    type: number
    sql: ${TABLE}.day_of_wk_id ;;
  }

  dimension: day_of_wk_name {
    type: string
    sql: ${TABLE}.day_of_wk_name ;;
  }

  dimension: day_of_year {
    type: number
    sql: ${TABLE}.day_of_year ;;
  }

  dimension: month_id {
    type: number
    sql: ${TABLE}.month_id ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.month_name ;;
  }

  dimension: quarter_id {
    type: number
    sql: ${TABLE}.quarter_id ;;
  }

  dimension: quarter_name {
    type: string
    sql: ${TABLE}.quarter_name ;;
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
    drill_fields: [id, day_of_wk_name, month_name, quarter_name]
  }
}
