view: query_list {
  derived_table: {
    #sql: select dbtype, qidx, substr(queryname,7,30) as queryname, avg(etime)/1000 avgetime from querymetrics group by 1,2, 3   ;;


    sql: select d1, d2, d3, q1, n1, e1, e2, e3, diff1, diff2 from querylistview ;;


  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: d1 {
    type: string
    sql: ${TABLE}.d1 ;;
  }

  dimension: d2 {
    type: string
    sql: ${TABLE}.d2 ;;
  }

  dimension: d3 {
    type: string
    sql: ${TABLE}.d3 ;;
  }

  dimension: q1 {
    type: number
    sql: ${TABLE}.q1;;
  }

  dimension: n1 {
    type: string
    sql: ${TABLE}.n1 ;;
  }

 dimension: e1 {
    type:  number
    value_format: "###0.000"
    sql: ${TABLE}.e1 ;;
  }

 dimension: e2 {
    type:  number
    value_format: "###0.000"
    sql: ${TABLE}.e2 ;;
  }

  dimension: e3 {
    type:  number
    value_format: "###0.000"
    sql: ${TABLE}.e3 ;;
  }

  dimension: diff1 {
    type:  number
    value_format: "-###0.000"
    sql: ${TABLE}.diff1 ;;
  }

  dimension: diff2 {
    type:  number
    value_format: "-###0.000"
    sql: ${TABLE}.diff2 ;;
  }

  set: detail {
    fields:  [ d1, d2, d3, q1, n1, e1, e2, e3, diff1, diff2 ]
  }
}
