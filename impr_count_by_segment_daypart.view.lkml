view: impr_count_by_segment_daypart {
  sql_table_name: [VwHHCharterLARpt].dbo.ImprCountBySegmentDaypart ;;

  dimension: adid {
    type: number
    value_format_name: id
    sql: ${TABLE}.Adid ;;
  }

  dimension: market {
    type: string
    sql: COALESCE(('LA'),CAST(${TABLE}.Adid AS varchar(10)));; #lets you add a note for the market, kinda hackey but it works
  }

  dimension: daypart_id {
    type: number
    sql: ${TABLE}.DaypartId ;;
  }

  dimension: insertion_date {
    type: string
    sql: ${TABLE}.InsertionDate ;;
  }

  measure: live_deduped_impression_count {
    type: number
    sql: ${TABLE}.LiveDedupedImpressionCount ;;
    hidden: yes
  }

  measure: live_impression_count {
    type: number
    sql: ${TABLE}.LiveImpressionCount ;;
    hidden: yes
  }

  measure: live_p1_deduped_impression_count {
    type: number
    sql: ${TABLE}.LiveP1DedupedImpressionCount ;;
    hidden: yes
  }

  measure: live_p1_impression_count {
    type: number
    sql: ${TABLE}.LiveP1ImpressionCount ;;
    hidden: yes
  }

  measure: live_p3_deduped_impression_count {
    type: number
    sql: ${TABLE}.LiveP3DedupedImpressionCount ;;
    hidden: yes
  }

  measure: live_p3_impression_count {
    type: number
    sql: ${TABLE}.LiveP3ImpressionCount ;;
    hidden: yes
  }

  measure: live_p7_deduped_impression_count {
    type: number
    sql: ${TABLE}.LiveP7DedupedImpressionCount ;;
    hidden: yes
  }

  measure: live_p7_impression_count {
    type: number
    sql: ${TABLE}.LiveP7ImpressionCount ;;
    hidden: yes
  }

  measure: live_p7_pdeduped_impression_count {
    type: number
    sql: ${TABLE}.LiveP7PDedupedImpressionCount ;;
    hidden: yes
  }

  measure: live_p7_pimpression_count {
    type: number
    sql: ${TABLE}.LiveP7PImpressionCount ;;
    hidden: yes
  }

  measure: live_psddeduped_impression_count {
    type: number
    sql: ${TABLE}.LivePSDDedupedImpressionCount ;;
    hidden: yes
  }

  measure: live_psdimpression_count {
    type: number
    sql: ${TABLE}.LivePSDImpressionCount ;;
    hidden: yes
  }

  dimension: segment_flag {
    type: string
    sql: ${TABLE}.SegmentFlag ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  ####sum versions of values for suming data
  measure: live_deduped_impression_count_sum {
    type: sum
    sql: ${TABLE}.LiveDedupedImpressionCount ;;
  }

  measure: live_impression_count_sum {
    type: sum
    sql: ${TABLE}.LiveImpressionCount ;;
  }

  measure: live_p1_deduped_impression_count_sum {
    type: sum
    sql: ${TABLE}.LiveP1DedupedImpressionCount ;;
  }

  measure: live_p1_impression_count_sum {
    type: sum
    sql: ${TABLE}.LiveP1ImpressionCount ;;
  }

  measure: live_p3_deduped_impression_count_sum {
    type: sum
    sql: ${TABLE}.LiveP3DedupedImpressionCount ;;
  }

  measure: live_p3_impression_count_sum {
    type: sum
    sql: ${TABLE}.LiveP3ImpressionCount ;;
  }

  measure: live_p7_deduped_impression_count_sum {
    type: sum
    sql: ${TABLE}.LiveP7DedupedImpressionCount ;;
  }

  measure: live_p7_impression_count_sum {
    type: sum
    sql: ${TABLE}.LiveP7ImpressionCount ;;
  }

  measure: live_p7_pdeduped_impression_count_sum {
    type: sum
    sql: ${TABLE}.LiveP7PDedupedImpressionCount ;;
  }

  measure: live_p7_pimpression_count_sum {
    type: sum
    sql: ${TABLE}.LiveP7PImpressionCount ;;
  }

  measure: live_psddeduped_impression_count_sum {
    type: sum
    sql: ${TABLE}.LivePSDDedupedImpressionCount ;;
  }

  measure: live_psdimpression_count_sum {
    type: sum
    sql: ${TABLE}.LivePSDImpressionCount ;;
  }
}
