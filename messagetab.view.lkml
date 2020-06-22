view: messagetab {
  sql_table_name: actian.messagetab ;;

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
