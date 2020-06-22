view: messagetab {
  sql_table_name: actian.messgetab ;;

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
