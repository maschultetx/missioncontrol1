view: runtimeview {

sql_table_name: actian.runtimeview ;;

   dimension: dbtype {
     type: string
     sql: ${TABLE}.dbtype ;;
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
