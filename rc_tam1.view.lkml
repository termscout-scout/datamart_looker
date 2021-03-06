view: rc_tam1 {
  sql_table_name: test.rc_tam1 ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: company_grade {
    type: string
    sql: ${TABLE}.company_grade ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: duns_nbr {
    type: number
    sql: ${TABLE}.DUNS_nbr ;;
  }

  dimension: effective_empl_range {
    type: string
    sql: ${TABLE}.effective_empl_range ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.location_type ;;
  }

  dimension: primary_bus_nm {
    type: string
    sql: ${TABLE}.primary_bus_nm ;;
  }

  dimension: priority_group {
    type: string
    sql: ${TABLE}.priority_group ;;
  }

  dimension: rc_industry {
    type: string
    sql: ${TABLE}.rc_industry ;;
  }

  dimension: set_count {
    type: number
    sql: ${TABLE}.set_count ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
