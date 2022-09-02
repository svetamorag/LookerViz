connection: "testcontacts"

# include all the views
include: "/views/**/*.view"

datagroup: testcontacts_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: testcontacts_default_datagroup

explore: contact_list {}

explore: uspresidents {}

explore: all_presidents {}
