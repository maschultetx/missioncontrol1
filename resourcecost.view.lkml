view: resourcecost {
  sql_table_name: actian.resourcecost ;;

  dimension: dbtype {
    type: string
    sql: ${TABLE}.dbtype ;;
  }

  dimension: status{
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: hourly_cost_per_unit {
    type: number
    sql: ${TABLE}.hourly_cost_per_unit ;;
  }

  dimension: num_units {
    type: number
    sql: ${TABLE}.num_units ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  measure: incremental_cost {
     type:  sum
    value_format: "$#0.00"
    sql:  ${TABLE}.incremental_cost ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
