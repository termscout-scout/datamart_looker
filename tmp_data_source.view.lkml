view: tmp_data_source {
  sql_table_name: test.tmp_data_source ;;

  dimension: data_source_type_id {
    type: number
    sql: ${TABLE}.data_source_type_id ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension: source_name2 {
    type: string
    sql: ${TABLE}.source_name2 ;;
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

  measure: count {
    type: count
    drill_fields: [source_name]
  }
}
