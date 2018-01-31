view: d_year {
  sql_table_name: test.d_year ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
