view: querymetrics {
  #sql_table_name: actian.querymetrics ;;

  derived_table: {

    sql: select qidx, a.dbtype, queryname, etime, source, label from querymetrics a, labels b where a.dbtype = b.dbtype ;;

  }


  dimension: dbtype {
    type: string
    sql: ${TABLE}.dbtype ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: etime {
    type: number
    sql: ${TABLE}.etime ;;
  }

  dimension: qidx {
    type: number
    sql: ${TABLE}.qidx ;;
  }

  dimension: queryname {
    type: string
    sql: ${TABLE}.queryname ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  measure: count {
    type: count
    drill_fields: [queryname]
  }

  # average seconds from milliseconds
  measure: avg_execution_time_seconds {
    type: average
    value_format:"#####.0;"
    #sql: 60 / ${executiontimeseconds} ;;
    # reversing the gage
    sql:  ${etime}/1000 ;;
  }


  # average seconds milliseconds
  measure: avg_execution_time {
    type: average
    value_format:"#####;"

    sql:  ${etime} ;;
  }

measure: qm_test {
  type: number
  value_format:"#.0;"

  sql: case ${avg_execution_time_seconds} when 0 then 0 else 60/ ${avg_execution_time_seconds} end ;;

}

# Avalanche
# this is good for sf100
measure: gas_guage_colorful {
  type: number
    value_format:"#.0;"
    #sql: 60 / ${executiontimeseconds} ;;
    # reversing the gage/500 end ;;

    sql: case ${avg_execution_time_seconds} when 0 then 0 else 60/ ${avg_execution_time_seconds} end ;;

  #chds is the range
    html:   <img src="https://chart.googleapis.com/chart?chs=475x300&cht=gom&chds=0,15&chxt=y&chxr=0,0,2000&chxl=0:|slow|fast&chco=d7f58d,cbf169,beee45,b2eb21,9cd213&chf=bg,s,FFFFFF00&&chd=t:{{ value }}&chl={{ rendered_value }}">;;

  }

  # competitor S
  # this is good for sf100
  measure: gas_guage_grey {
    type: number
    value_format:"#.0;"
    #sql: 60 / ${executiontimeseconds} ;;
    # reversing the gage
    sql: case ${avg_execution_time_seconds} when 0 then 0 else 60/ ${avg_execution_time_seconds} end ;;

   # html:   <img src="https://chart.googleapis.com/chart?chs=250x150&cht=gom&chma=10,0,0,0&chxt=y&chds=0,50&chxr=0,0,2000&chxl=0:|slow|fast&chco=9eafed,7d94e7,5c79e1,3a5edb,2549c9&chf=bg,s,FFFFFF00&&chd=t:{{ value }}&chl={{ rendered_value }}">;;
   html:   <img src="https://chart.googleapis.com/chart?chs=475x300&cht=gom&chxt=y&chds=0,15&chxr=0,0,2000&chxl=0:|slow|fast&chco=9eafed,7d94e7,5c79e1,3a5edb,2549c9&chf=bg,s,FFFFFF00&&chd=t:{{ value }}&chl={{ rendered_value }}">;;

  }

  # competitor R
  # this is good for sf100
  measure: gas_guage_red {
    type: number
    value_format:"#.0;"
    #sql: 60 / ${executiontimeseconds} ;;
    # reversing the gage
    sql: case ${avg_execution_time_seconds} when 0 then 0 else 60/ ${avg_execution_time_seconds} end ;;

    #html:   <img src="https://chart.googleapis.com/chart?chs=250x150&cht=gom&chma=10,0,0,0&chxt=y&chds=0,50&chxr=0,0,2000&chxl=0:|slow|fast&chco=bdddfe,97cafb,70b6fc,4aa3fc,238ffb&chf=bg,s,FFFFFF00&&chd=t:{{ value }}&chl={{ rendered_value }}">;;
    html:   <img src="https://chart.googleapis.com/chart?chs=475x300&cht=gom&chxt=y&chds=0,15&chxr=0,0,2000&chxl=0:|slow|fast&chco=bdddfe,97cafb,70b6fc,4aa3fc,238ffb&chf=bg,s,FFFFFF00&&chd=t:{{ value }}&chl={{ rendered_value }}">;;
  }


# Avalanche
# this is good for sf10000
  measure: gas_guage_colorful_sf10000 {
    type: number
    value_format:"#.0;"
    #sql: 60 / ${executiontimeseconds} ;;
    # reversing the gage/500 end ;;

    sql: case ${avg_execution_time_seconds} when 0 then 0 else 60/ ${avg_execution_time_seconds} end ;;

    html:   <img src="https://chart.googleapis.com/chart?chs=475x300&cht=gom&chds=0,3&chxt=y&chxr=0,0,2000&chxl=0:|slow|fast&chco=d7f58d,cbf169,beee45,b2eb21,9cd213&chf=bg,s,FFFFFF00&&chd=t:{{ value }}&chl={{ rendered_value }}">;;

  }

  # competitor S
  # this is good for sf10000
  measure: gas_guage_grey_sf10000 {
    type: number
    value_format:"#.0;"
    #sql: 60 / ${executiontimeseconds} ;;
    # reversing the gage
    sql: case ${avg_execution_time_seconds} when 0 then 0 else 60/ ${avg_execution_time_seconds} end ;;

    # html:   <img src="https://chart.googleapis.com/chart?chs=250x150&cht=gom&chma=10,0,0,0&chxt=y&chds=0,50&chxr=0,0,2000&chxl=0:|slow|fast&chco=9eafed,7d94e7,5c79e1,3a5edb,2549c9&chf=bg,s,FFFFFF00&&chd=t:{{ value }}&chl={{ rendered_value }}">;;
    html:   <img src="https://chart.googleapis.com/chart?chs=475x300&cht=gom&chxt=y&chds=0,3&chxr=0,0,2000&chxl=0:|slow|fast&chco=9eafed,7d94e7,5c79e1,3a5edb,2549c9&chf=bg,s,FFFFFF00&&chd=t:{{ value }}&chl={{ rendered_value }}">;;

  }

  # competitor R
  # this is good for sf10000
  measure: gas_guage_red_sf10000 {
    type: number
    value_format:"#.0;"
    #sql: 60 / ${executiontimeseconds} ;;
    # reversing the gage
    sql: case ${avg_execution_time_seconds} when 0 then 0 else 60/ ${avg_execution_time_seconds} end ;;

    #html:   <img src="https://chart.googleapis.com/chart?chs=250x150&cht=gom&chma=10,0,0,0&chxt=y&chds=0,50&chxr=0,0,2000&chxl=0:|slow|fast&chco=bdddfe,97cafb,70b6fc,4aa3fc,238ffb&chf=bg,s,FFFFFF00&&chd=t:{{ value }}&chl={{ rendered_value }}">;;
    html:   <img src="https://chart.googleapis.com/chart?chs=475x300&cht=gom&chxt=y&chds=0,3&chxr=0,0,2000&chxl=0:|slow|fast&chco=bdddfe,97cafb,70b6fc,4aa3fc,238ffb&chf=bg,s,FFFFFF00&&chd=t:{{ value }}&chl={{ rendered_value }}">;;
  }


}
