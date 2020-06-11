view: resultsruntimeview {
  sql_table_name: actian.resultsruntimeview ;;

  dimension: target {
    type: string
    sql: ${TABLE}.target ;;
  }


  measure: message{
    type: string
    sql: ${TABLE}.message ;;
  }
}
