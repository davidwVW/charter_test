view: video_crm_campaign_flag_view {
  sql_table_name: [VwDb].[dbo].[VideoCrmCampaignFlagView] ;;

  measure: count {
    type: count
  }

  dimension: flagid {
    type: number
    sql: ${TABLE}.flagid ;;
  }

  dimension: mediapackid {
    type: number
    sql: ${TABLE}.mediapackid ;;
  }

  dimension: flag {
    type: number
    sql: ${TABLE}.flag ;;
  }

  dimension: SegmentName {
    type: string
    sql: ${TABLE}.description ;;
    alias: [SegmentName]
  }

  set: detail {
    fields: [flagid, mediapackid, flag, SegmentName]
  }
}
