# Google Ads configuration for Marketing Analytics by Looker

include: "/app-marketing-google-ads-adapter/*.view"
include: "/app-marketing-google-ads/*.view"
include: "/app-marketing-google-ads/*.dashboard"

# TODO: Update Google Ads schema
datagroup: adwords_etl_datagroup {
  sql_trigger: SELECT COUNT(*) FROM `google_ads.account_hourly_stats` ;;
  max_cache_age: "24 hours"
}

view: adwords_config {
  extension: required

  # TODO: Update Google Ads schema
  dimension: adwords_schema {
    hidden: yes
    sql:adwords;;
  }
}

view: ad {
  extends: [ad_adapter]
  # Customize: Add ad fields
}

view: keyword {
  extends: [keyword_adapter]
  # Customize: Add keyword fields
}

view: ad_group {
  extends: [ad_group_adapter]
  # Customize: Add ad group fields
}

view: campaign {
  extends: [campaign_adapter]
  # Customize: Add campaign fields
}

view: customer {
  extends: [customer_adapter]
  # Customize: Add customer fields
}

view: google_ad_metrics_base {
  extends: [google_ad_metrics_base_template]
  # Customize: Add metrics or customize drills / labels / descriptions
}

# Daily Account Aggregation
explore: ad_impressions {
  extends: [ad_impressions_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions {
  extends: [ad_impressions_template]
}

# Hourly Account Aggregation
explore: ad_impressions_hour {
  extends: [ad_impressions_hour_template]
}

view: ad_impressions_hour {
  extends: [ad_impressions_hour_template]
}

# Daily Campaign Aggregation
explore: ad_impressions_campaign {
  extends: [ad_impressions_campaign_template]
}

view: ad_impressions_campaign {
  extends: [ad_impressions_campaign_template]
}

# Hourly Campaign Aggregation
explore: ad_impressions_campaign_hour {
  extends: [ad_impressions_campaign_hour_template]
}

view: ad_impressions_campaign_hour {
  extends: [ad_impressions_campaign_hour_template]
}

# Daily Ad Group Aggregation
explore: ad_impressions_ad_group {
  extends: [ad_impressions_ad_group_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_ad_group {
  extends: [ad_impressions_ad_group_template]
}

# Hourly Ad Group Aggregation
explore: ad_impressions_ad_group_hour {
  extends: [ad_impressions_ad_group_hour_template]
}

view: ad_impressions_ad_group_hour {
  extends: [ad_impressions_ad_group_hour_template]
}

# Daily Keyword Aggregation
explore: ad_impressions_keyword {
  extends: [ad_impressions_keyword_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_keyword {
  extends: [ad_impressions_keyword_template]
}

# Daily Ad Aggregation
explore: ad_impressions_ad {
  extends: [ad_impressions_ad_template]
}

view: ad_impressions_ad {
  extends: [ad_impressions_ad_template]
}

# Daily Geo Aggregation
explore: ad_impressions_geo {
  extends: [ad_impressions_geo_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_geo {
  extends: [ad_impressions_geo_template]
}

# Daily Age Range Aggregation
explore: ad_impressions_age_range {
  extends: [ad_impressions_age_range_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_age_range {
  extends: [ad_impressions_age_range_template]
}

# Daily Gender Aggregation
explore: ad_impressions_gender {
  extends: [ad_impressions_gender_template]
}

view: ad_impressions_gender {
  extends: [ad_impressions_gender_template]
}

# Daily Audience Aggregation
explore: ad_impressions_audience {
  extends: [ad_impressions_audience_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_audience {
  extends: [ad_impressions_audience_template]
}

# Daily Parental Status Aggregation
explore: ad_impressions_parental_status {
  extends: [ad_impressions_parental_status_template]
}

view: ad_impressions_parental_status {
  extends: [ad_impressions_parental_status_template]
}

# Daily Video Aggregation
explore: ad_impressions_video {
  extends: [ad_impressions_video_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_video {
  extends: [ad_impressions_video_template]
}
