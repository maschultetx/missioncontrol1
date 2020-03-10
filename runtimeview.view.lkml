view: runtimeview {

sql_table_name: actian.runtimeview ;;

   dimension: target {
     type: string
     sql: ${TABLE}.target ;;
   }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }


  dimension: runtime {
        type: string

    sql: ${TABLE}.runtime;;
  }
 }
