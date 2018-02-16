view: f_install_pdmm_role {
  sql_table_name: test.f_install_pdmm_role ;;

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
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

  dimension: nbr_contacts {
    type: number
    sql: ${TABLE}.nbr_contacts ;;
  }

  dimension: nbr_contacts_180d {
    type: number
    sql: ${TABLE}.nbr_contacts_180d ;;
  }

  dimension: nbr_contacts_360d {
    type: number
    sql: ${TABLE}.nbr_contacts_360d ;;
  }

  dimension: nbr_contacts_90d {
    type: number
    sql: ${TABLE}.nbr_contacts_90d ;;
  }

  dimension: nbr_contacts_gt360d {
    type: number
    sql: ${TABLE}.nbr_contacts_gt360d ;;
  }

  dimension: pdmm_role_id {
    type: number
    sql: ${TABLE}.pdmm_role_id ;;
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
