view: all_presidents {
  derived_table: {
    sql: SELECT * FROM `svetasproject.TestContacts.USPresidents`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: presidency_ {
    type: number
    sql: ${TABLE}.Presidency_ ;;
  }

  dimension: president_ {
    type: string
    sql: ${TABLE}.President_ ;;
  }

  dimension: wikipedia_entry {
    type: string
    sql: ${TABLE}.Wikipedia_Entry ;;
  }

  dimension: took_office_ {
    type: date
    datatype: date
    sql: ${TABLE}.Took_office_ ;;
  }

  dimension: left_office_ {
    type: string
    sql: ${TABLE}.Left_office_ ;;
  }

  dimension: party_ {
    type: string
    sql: ${TABLE}.Party_ ;;
  }

  dimension: portrait {
    type: string
    sql: ${TABLE}.Portrait ;;
  }

  dimension: thumbnail {
    type: string
    sql: ${TABLE}.Thumbnail ;;
  }

  dimension: home_state {
    type: string
    sql: ${TABLE}.Home_State ;;
  }

  set: detail {
    fields: [
      presidency_,
      president_,
      wikipedia_entry,
      took_office_,
      left_office_,
      party_,
      portrait,
      thumbnail,
      home_state
    ]
  }
}
