view: contact_list {
  sql_table_name: `TestContacts.ContactList`
    ;;

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.Company ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: postal_zip {
    type: string
    sql: ${TABLE}.PostalZip ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: string_field_0 {
    type: string
    sql: ${TABLE}.string_field_0 ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
