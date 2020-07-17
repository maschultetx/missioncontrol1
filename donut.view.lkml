view: donut {

  derived_table: {


      sql:



      select max(numqueries) - count(*) val, 'To Go' as status, target  from querysetinfo,  querymetrics group by 3,2
      union all
      select count(*) val, 'Completed' as status, target  from querysetinfo,  querymetrics group by 3,2

      ;;
  }

  dimension: target {
    type: string
    sql: ${TABLE}.target ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: val {
    type: sum
    sql: ${TABLE}.val ;;
  }



}
