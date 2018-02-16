view: d_install {
  sql_table_name: test.d_install ;;

  dimension: abdn_group {
    type: string
    sql: ${TABLE}.abdn_group ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.class ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: devtype {
    type: string
    sql: ${TABLE}.devtype ;;
  }

  dimension: manuf {
    type: string
    sql: ${TABLE}.manuf ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: series {
    type: string
    sql: ${TABLE}.series ;;
  }

  dimension: subclass {
    type: string
    sql: ${TABLE}.subclass ;;
  }

  dimension: tabkey {
    primary_key: yes
    type: string
    sql: ${TABLE}.tabkey ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
