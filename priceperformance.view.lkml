view: priceperformance {


  derived_table: {

    sql: select pp, ppq, a.target, label from priceperformance a, labels b where a.target = b.target ;;

  }


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: target {
    type: string
    sql: ${TABLE}.target ;;
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
    fields:  [ pp, target, label]
  }
}
