view: priceperformance {


  derived_table: {

    sql: select pp, ppq, a.dbtype, label from priceperformance a, labels b where a.dbtype = b.dbtype ;;

  }


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: dbtype {
    type: string
    sql: ${TABLE}.dbtype ;;
  }


 measure: pp {
    type: average
    value_format: "$###0.00"
    sql: ${TABLE}.pp ;;
  }

  measure: ppq {
    type: average
    value_format: "$###0.00000"
    sql: ${TABLE}.ppq ;;
  }


  dimension: label {
    type:  string
        sql: ${TABLE}.label ;;
  }

  set: detail {
    fields:  [ pp, dbtype, label]
  }
}
