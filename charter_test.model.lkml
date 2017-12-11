connection: "10_124_10_80"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"


explore: impr_count_by_segment_daypart {
  join: video_crm_media_package_view {
    sql_on: ${impr_count_by_segment_daypart.adid} = ${video_crm_media_package_view.adid} ;;
  }
  join: video_crm_campaign_flag_view {
    sql_on: ${impr_count_by_segment_daypart.segment_flag} = ${video_crm_campaign_flag_view.flag}
    AND ${video_crm_media_package_view.mediapackid} = ${video_crm_campaign_flag_view.mediapackid};;
  }
  join: day_part{
    sql_on: ${impr_count_by_segment_daypart.daypart_id} = ${day_part.id} ;;
  }
}

explore: day_part_group {
join: day_part {
    sql_on: ${day_part_group.id} = ${day_part.id} ;;
  }
}

explore: video_crm_media_package_view {
#  join: video_crm_campaign_flag_view {
 #   sql_on: ${video_crm_media_package_view.mediapackid} = ${video_crm_campaign_flag_view.mediapackid} ;;
  #}
}

explore: video_crm_campaign_flag_view {}
# - explore: ad_reach_ratings_by_segment_network
#   joins:
#     - join: record_type
#       type: left_outer
#       sql_on: ${ad_reach_ratings_by_segment_network.record_type_id} = ${record_type.id}
#       relationship: many_to_one


# - explore: affid_reconcile_bckp
#   joins:
#     - join: affidavit_item
#       type: left_outer
#       sql_on: ${affid_reconcile_bckp.affidavit_item_id} = ${affidavit_item.affidavit_item_id}
#       relationship: many_to_one

#     - join: affidavit
#       type: left_outer
#       sql_on: ${affidavit_item.affidavit_id} = ${affidavit.affidavit_id}
#       relationship: many_to_one


# - explore: affidavit

# - explore: affidavit2_contract_idview
#   joins:
#     - join: affidavit
#       type: left_outer
#       sql_on: ${affidavit2_contract_idview.affidavit_id} = ${affidavit.affidavit_id}
#       relationship: many_to_one


# - explore: affidavit_broadcast_month_log

# - explore: affidavit_contract_id
#   joins:
#     - join: affidavit
#       type: left_outer
#       sql_on: ${affidavit_contract_id.affidavit_id} = ${affidavit.affidavit_id}
#       relationship: many_to_one


# - explore: affidavit_error_log
#   joins:
#     - join: affidavit
#       type: left_outer
#       sql_on: ${affidavit_error_log.affidavit_id} = ${affidavit.affidavit_id}
#       relationship: many_to_one


# - explore: affidavit_item
#   joins:
#     - join: affidavit
#       type: left_outer
#       sql_on: ${affidavit_item.affidavit_id} = ${affidavit.affidavit_id}
#       relationship: many_to_one


# - explore: affidavit_reconciled_item
#   joins:
#     - join: affidavit_item
#       type: left_outer
#       sql_on: ${affidavit_reconciled_item.affidavit_item_id} = ${affidavit_item.affidavit_item_id}
#       relationship: many_to_one

#     - join: affidavit
#       type: left_outer
#       sql_on: ${affidavit_item.affidavit_id} = ${affidavit.affidavit_id}
#       relationship: many_to_one


# - explore: affidavit_reconciled_item_testing
#   joins:
#     - join: affidavit_item
#       type: left_outer
#       sql_on: ${affidavit_reconciled_item_testing.affidavit_item_id} = ${affidavit_item.affidavit_item_id}
#       relationship: many_to_one

#     - join: affidavit
#       type: left_outer
#       sql_on: ${affidavit_item.affidavit_id} = ${affidavit.affidavit_id}
#       relationship: many_to_one


# - explore: affidavit_unreconciled_item

# - explore: affidavit_unreconciled_item_testing

# - explore: campaign_reach_by_daypart
#   joins:
#     - join: record_type
#       type: left_outer
#       sql_on: ${campaign_reach_by_daypart.record_type_id} = ${record_type.id}
#       relationship: many_to_one


# - explore: campaign_reach_by_daypart_network
#   joins:
#     - join: record_type
#       type: left_outer
#       sql_on: ${campaign_reach_by_daypart_network.record_type_id} = ${record_type.id}
#       relationship: many_to_one


# - explore: campaign_reach_by_network
#   joins:
#     - join: record_type
#       type: left_outer
#       sql_on: ${campaign_reach_by_network.record_type_id} = ${record_type.id}
#       relationship: many_to_one


# - explore: campaign_stats

# - explore: campaign_stats_new

# - explore: collision_counts_by_zone_date

# - explore: collision_counts_by_zone_date_hour_min

# - explore: collision_counts_by_zone_date_hour_min_temp

# - explore: collision_prediction_model

# - explore: collisions

# - explore: collisions_temp

# - explore: daily_impression_count

# - explore: day_part
#   joins:
#     - join: day_part_group
#       type: left_outer
#       sql_on: ${day_part.day_part_group_id} = ${day_part_group.id}
#       relationship: many_to_one


# - explore: day_part_group

# - explore: freq_cap_hhcount

# - explore: freq_cap_hhcount_backup

# - explore: freq_cap_stbcount

# - explore: freq_cap_stbcount_backup

# - explore: frequency_cap_hhcount
#   joins:
#     - join: record_type
#       type: left_outer
#       sql_on: ${frequency_cap_hhcount.record_type_id} = ${record_type.id}
#       relationship: many_to_one


# - explore: frequency_cap_stbcount
#   joins:
#     - join: record_type
#       type: left_outer
#       sql_on: ${frequency_cap_stbcount.record_type_id} = ${record_type.id}
#       relationship: many_to_one


# - explore: group_idto_ams_code

# - explore: icount_by_segment

# - explore: impr_count_by_segment_daypart

# - explore: impr_count_by_segment_daypart_backup

# - explore: impr_count_by_segment_daypart_bckp

# - explore: impr_count_by_segment_daypart_temp

# - explore: impr_count_tune_in_by_segment_network

# - explore: impr_count_tune_in_by_segment_network_backup

# - explore: impr_count_tune_in_by_segment_network_bckp

# - explore: impr_count_tune_in_by_segment_network_temp

# - explore: impression_count_by_day_part

# - explore: impression_count_by_network

# - explore: impression_count_by_segment_daypart

# - explore: impression_count_by_segment_network

# - explore: impression_count_by_segment_network_temp

# - explore: impression_count_tune_in_by_segment

# - explore: impressions_for_collisions_by_segment

# - explore: live_impression_by_adid

# - explore: reach_by_daypart

# - explore: reach_by_daypart_backup

# - explore: reach_by_daypart_network

# - explore: reach_by_daypart_network_backup

# - explore: reach_by_network

# - explore: reach_by_network_backup

# - explore: reach_ratings_by_daypart_segment_network

# - explore: reach_ratings_by_daypart_segment_network_backup

# - explore: reach_ratings_by_segment_network

# - explore: reach_ratings_by_segment_network_backup

# - explore: reconciled_diffs
#   joins:
#     - join: affidavit_item
#       type: left_outer
#       sql_on: ${reconciled_diffs.affidavit_item_id} = ${affidavit_item.affidavit_item_id}
#       relationship: many_to_one

#     - join: affidavit
#       type: left_outer
#       sql_on: ${affidavit_item.affidavit_id} = ${affidavit.affidavit_id}
#       relationship: many_to_one


# - explore: reconciliation_log

# - explore: record_type

# - explore: spot_hold

# - explore: spot_network_dup_key

# - explore: sysdiagrams

# - explore: tbl_new
#   joins:
#     - join: affidavit_item
#       type: left_outer
#       sql_on: ${tbl_new.affidavit_item_id} = ${affidavit_item.affidavit_item_id}
#       relationship: many_to_one

#     - join: affidavit
#       type: left_outer
#       sql_on: ${affidavit_item.affidavit_id} = ${affidavit.affidavit_id}
#       relationship: many_to_one


# - explore: tmp_exploded_affid_item

# - explore: tmp_lgexploded_affid_item

# - explore: ver_item

# - explore: video_crm_segmentation_file_counts

# - explore: zone_collision_count

# - explore: zone_collision_count_by_hour_min

# - explore: zone_collisions
