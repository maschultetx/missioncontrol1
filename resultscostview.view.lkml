view: resultscostview {
  sql_table_name: actian.resultscostview ;;

  dimension: target {
    type: string
    sql: ${TABLE}.target ;;
  }


  measure: message{
    type: string
    sql: ${TABLE}.message ;;
  }
}
