view: winview {
  sql_table_name: actian.winview ;;

    measure: message{
    type: string
    sql: ${TABLE}.message ;;
  }
}
