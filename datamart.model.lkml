connection: "termscout-report_instance"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: f_daily_src {
  hidden: yes
  join:  d_data_source {
    type: inner
    relationship: many_to_one
    sql_on: ${f_daily_src.data_source_id} = ${d_data_source.id} ;;
   }
  join: d_data_source_type {
    type: inner
    relationship: many_to_one
    sql_on: ${d_data_source.data_src_type_id} = ${d_data_source_type.id} ;;
    }
}
