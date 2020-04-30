view: costview {
  sql_table_name: actian.costview ;;

  dimension: target {
    type: string
    sql: ${TABLE}.target ;;
  }


  measure: cost{
    type: number
    value_format: "$###0.00"
    sql: ${TABLE}.cost ;;
  }
}
