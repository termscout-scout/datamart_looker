view: contact_master {
  sql_table_name: test.ContactMaster ;;

  dimension: address1 {
    type: string
    sql: ${TABLE}.Address1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.Address2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.Company ;;
  }

  dimension: contact_grp {
    type: string
    sql: ${TABLE}.contact_grp ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: first_nm {
    type: string
    sql: ${TABLE}.first_nm ;;
  }

  dimension: last_nm {
    type: string
    sql: ${TABLE}.last_nm ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.Website ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
