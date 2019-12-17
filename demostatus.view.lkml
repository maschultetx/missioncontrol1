view: demostatus {
  sql_table_name: actian.demostatus ;;

  dimension: dbtype {
    type: string
    sql: ${TABLE}.dbtype ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: start_time {
    type: date_time
    sql: ${TABLE}.start_time ;;
  }

  dimension: end_time {
    type: string
    sql:end_time ;;
  }

  dimension: run_time {
    type:string
        #sql:case when ${status}='READY' then '' else cast(local_time as timestamp(0))-${start_time} end ;;
    sql:case when status = 'READY' then null when status = 'FINISHED' then ${end_time}-${start_time} else cast(local_time as timestamp(0))-${start_time} end ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
