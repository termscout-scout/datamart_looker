view: presales_frontier_companies {
  sql_table_name: test.presales_frontier_companies ;;

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
