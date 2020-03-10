view: labels {
  sql_table_name: actian.labels ;;

  dimension: target {
    type: string
    sql: ${TABLE}.target ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
