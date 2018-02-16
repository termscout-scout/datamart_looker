view: d_data_source {
  sql_table_name: test.d_data_source ;;

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: data_src_type_id {
    type: number
    sql: ${TABLE}.data_src_type_id ;;
  }

  dimension: descr {
    type: string
    sql: ${TABLE}.descr ;;
  }

  dimension_group: dt_initially_added {
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
    sql: ${TABLE}.dt_initially_added ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nbr_times_used {
    type: number
    sql: ${TABLE}.nbr_times_used ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
