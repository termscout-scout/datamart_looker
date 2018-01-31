connection: "termscout-report_instance"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: datamart_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: datamart_default_datagroup

explore: contact_master {}

explore: d_company {}

explore: d_contact {}

explore: d_data_source {}

explore: d_data_source_type {}

explore: d_day {}

explore: d_day_of_week {}

explore: d_month {}

explore: d_quarter {}

explore: d_week {}

explore: d_year {}

explore: f_daily_company {}

explore: f_daily_detail {}

explore: f_daily_src {}

explore: ods_active_date {}

explore: ods_company {}

explore: ods_contact {}

explore: ods_data_source {}

explore: ods_data_source_type {}

explore: presales_frontier_companies {}

explore: rc_tam1 {}

explore: ringctl_rc_tam1_4_match_duns {}

explore: tmp_data_source {}
