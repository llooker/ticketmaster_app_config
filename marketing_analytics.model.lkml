# TODO: Update connection
connection: "facebook"

# TODO: Update schemas and add each module for cross channel reporting
datagroup: ama_etl_datagroup {
  sql_trigger: SELECT COUNT(*) FROM `facebook_ads_fivetran.ads_insights`, `google_ads.account_hourly_stats` ;;
  max_cache_age: "24 hours"
}

include: "/app-marketing-common/*.view"

# TODO: Add each relevant module
include: "adwords_config.view"
include: "facebook_ads_config.view"
include: "cross_channel_ad_impressions.view"
