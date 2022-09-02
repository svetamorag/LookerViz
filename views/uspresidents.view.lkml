view: uspresidents {
  sql_table_name: `TestContacts.USPresidents`
    ;;

  dimension: home_state {
    type: string
    sql: ${TABLE}.Home_State ;;
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

  dimension: presidency_ {
    type: number
    sql: ${TABLE}.Presidency_ ;;
  }

  dimension: president_ {
    type: string
    sql: ${TABLE}.President_ ;;
  }

  dimension: thumbnail {
    type: string
    sql: ${TABLE}.Thumbnail ;;
  }

  dimension_group: took_office_ {
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
    sql: ${TABLE}.Took_office_ ;;
  }

  dimension: wikipedia_entry {
    type: string
    sql: ${TABLE}.Wikipedia_Entry ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
