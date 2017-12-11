view: video_crm_media_package_view {
  sql_table_name: [VwDb].[dbo].[VideoCrmMediaPackageView] ;;

  measure: count {
    type: count
  }

  dimension: mediapackid {
    type: number
    sql: ${TABLE}.mediapackid ;;
  }

  dimension: campaignname {
    type: string
    sql: ${TABLE}.campaignname ;;
  }

  dimension: gsid {
    type: string
    sql: ${TABLE}.GSID ;;
  }

  dimension: adid {
    type: number
    sql: ${TABLE}.adid ;;
  }

  dimension: pack_id {
    type: number
    sql: ${TABLE}.PackID ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.ClientID ;;
  }

  dimension: adlength {
    type: number
    sql: ${TABLE}.adlength ;;
  }

  dimension: ad_divider {
    type: number
    sql: ${TABLE}.AdDivider ;;
  }

  dimension_group: start {
    type: time
    sql: ${TABLE}.Start ;;
  }

  dimension_group: end {
    type: time
    sql: ${TABLE}."End" ;;
  }

  dimension: active {
    type: number
    sql: ${TABLE}.active ;;
  }

  dimension: segfileid {
    type: number
    sql: ${TABLE}.segfileid ;;
  }

  dimension: user_friendly_id {
    type: string
    sql: ${TABLE}.UserFriendlyID ;;
  }

}
