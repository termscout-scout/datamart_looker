view: d_month {
  sql_table_name: test.d_month ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: qtr_id {
    type: number
    sql: ${TABLE}.qtr_id ;;
  }

  dimension: qtr_name {
    type: string
    sql: ${TABLE}.qtr_name ;;
  }

  dimension: year_id {
    type: number
    sql: ${TABLE}.year_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, qtr_name]
  }
}
