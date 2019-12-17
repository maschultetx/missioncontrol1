view: resources {
  sql_table_name: actian.resources ;;

  dimension: dbtype {
    type: string
    sql: ${TABLE}.dbtype ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: hourly_cost_per_unit {
    type: number
    sql: ${TABLE}.hourly_cost_per_unit ;;
  }

  dimension: num_units {
    type: number
    sql: ${TABLE}.num_units ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
