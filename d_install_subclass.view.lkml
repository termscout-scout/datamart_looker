view: d_install_subclass {
  sql_table_name: test.d_install_subclass ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: subclass {
    type: string
    sql: ${TABLE}.subclass ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
