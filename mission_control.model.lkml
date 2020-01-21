connection: "mission_control"

# include all the views
include: "*.view"

datagroup: mission_control_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "0 seconds"
 }

persist_with: mission_control_default_datagroup

explore: querymetrics {}

explore: demostatus {}

explore: resources {}

explore: testinfo {}

explore: labels {}

explore: priceperformance {}

explore: donut {}

explore: runtimeview {}
