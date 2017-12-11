view: day_part_group {
  sql_table_name: [VwHHCharterLARpt].dbo.DayPartGroup ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: HourName {
    type: string
    sql: ${TABLE}.Description ;;
    alias: [description]
  }

  measure: count {
    type: count
    drill_fields: [id, day_part.count]
  }
}
