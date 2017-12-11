view: day_part {
  sql_table_name: [VwHHCharterLARpt].dbo.DayPart ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: day_part_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DayPartGroupId ;;
  }

  dimension: Daypart {
    type: string
    sql: ${TABLE}.Description ;;
    alias: [description]
  }

  dimension: start_hour {
    type: number
    sql: ${TABLE}.StartHour ;;
  }

  measure: count {
    type: count
    drill_fields: [id, day_part_group.id]
  }
}
