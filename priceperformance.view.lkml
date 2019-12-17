view: priceperformance {


  derived_table: {

    sql: select pp, a.dbtype, label from priceperformance a, labels b where a.dbtype = b.dbtype ;;

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

  dimension: label {
    type:  string
        sql: ${TABLE}.label ;;
  }

  set: detail {
    fields:  [ pp, dbtype, label]
  }
}
