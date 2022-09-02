view: chordmatrix {
  derived_table: {
    sql: Select * From ChordMatrix
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: column1 {
    type: number
    sql: ${TABLE}.Column1 ;;
  }

  dimension: column2 {
    type: number
    sql: ${TABLE}.Column2 ;;
  }

  dimension: column3 {
    type: number
    sql: ${TABLE}.Column3 ;;
  }

  dimension: column4 {
    type: number
    sql: ${TABLE}.Column4 ;;
  }

  set: detail {
    fields: [column1, column2, column3, column4]
  }
}
