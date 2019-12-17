view: testinfo {
  sql_table_name: actian.testinfo ;;

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: sortvalue {
    type: number
    sql: ${TABLE}.sortvalue ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

    measure: count {
    type: count
    drill_fields: []
  }
}
