view: resultscostview_percent {
  sql_table_name: actian.resultscostview_percent ;;

  dimension: target {
    type: string
    sql: ${TABLE}.target ;;
  }


  measure: message{
    type: string
    sql: ${TABLE}.message ;;
  }
}
