view: f_install_summary {
  sql_table_name: test.f_install_summary ;;
  dimension: primarykey {
    hidden:yes
    type: string
    primary_key: yes
    sql: Concat(CAST(${day_id_date} as char),${tabkey});;
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

  dimension: nbr_companies {
    type: number
    sql: ${TABLE}.nbr_companies ;;
  }

  dimension: nbr_contacts {
    type: number
    sql: ${TABLE}.nbr_contacts ;;
  }

  dimension: nbr_sites {
    type: number
    sql: ${TABLE}.nbr_sites ;;
  }

  dimension: tabkey {
    type: string
    sql: ${TABLE}.tabkey ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
