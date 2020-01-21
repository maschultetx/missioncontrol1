view: donut {

  derived_table: {

    #select max(totalqueries) - count(*) to_go, count(*), now, dbtype  from querysetinfo,  querymetrics where source != 'seed' group by dbtype
      sql:



      select max(numqueries) - count(*) val, 'To Go' as status, dbtype  from querysetinfo,  querymetrics where source != 'seed' group by 3,2
      union all
      select count(*) val, 'Completed' as status, dbtype  from querysetinfo,  querymetrics where source != 'seed' group by 3,2

      ;;
  }

  dimension: dbtype {
    type: string
    sql: ${TABLE}.dbtype ;;
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
