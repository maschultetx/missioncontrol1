view: demostatus {
  sql_table_name: actian.demostatus ;;

  dimension: target {
    type: string
    sql: ${TABLE}.target ;;
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
    type: date_time
    sql:end_time ;;
  }

  dimension: run_time {
   type: string

        #sql:case when ${status}='READY' then '' else cast(local_time as timestamp(0))-${start_time} end ;;
    #sql:case when status = 'READY' then null when status = 'FINISHED' then ${end_time}-${start_time} else cast(local_time as timestamp(0))-${start_time} end ;;
    sql:case when status = 'READY' then null when status = 'FINISHED' then to_char((${end_time}-${start_time}),'hh:mm:ss') else to_char((current_timestamp-${start_time}), 'hh:mm:ss') end ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
