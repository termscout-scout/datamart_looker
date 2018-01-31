view: d_week {
  sql_table_name: test.d_week ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: week_name {
    type: string
    sql: ${TABLE}.week_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, week_name]
  }
}
