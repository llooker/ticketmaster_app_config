# Facebook Ads configuration for Marketing Analytics by Looker

include: "/app-marketing-facebook-ads-adapter/*.view"
include: "/app-marketing-facebook-ads/*.view"
include: "/app-marketing-facebook-ads/*.dashboard"

# TODO: Update Facebook Ads schema
datagroup: facebook_ads_etl_datagroup {
  sql_trigger: SELECT COUNT(*) FROM `facebook_ads_fivetran.ads_insights` ;;
  max_cache_age: "24 hours"
}

view: facebook_ads_config {
  extension: required

  # TODO: Update Facebook Ads schema
  dimension: facebook_ads_schema {
    hidden: yes
    sql:facebook_ads_for_looker;;
  }
}

view: fb_adcreative {
  extends: [adcreative_fb_adapter]
  # Customize: Add adcreative fields
}

view: fb_ad {
  extends: [ad_fb_adapter]
  # Customize: Add ad fields
}

view: fb_adset {
  extends: [adset_fb_adapter]
  # Customize: Add ad group fields
}

view: fb_campaign {
  extends: [campaign_fb_adapter]
  # Customize: Add campaign fields
}

view: fb_account {
  extends: [account_fb_adapter]
  # Customize: Add customer fields
}

view: fb_ad_metrics_base {
  extends: [fb_ad_metrics_base_template]
  # Customize: Add metrics or customize drills / labels / descriptions
}

# Ad Creative Aggregation
explore: fb_ad_impressions {
  extends: [fb_ad_impressions_template]
}

view: fb_ad_impressions {
  extends: [fb_ad_impressions_template]
}

# Hourly Age and Gender Aggregation
explore: fb_ad_impressions_age_and_gender {
  extends: [fb_ad_impressions_age_and_gender_template]
}

view: fb_ad_impressions_age_and_gender {
  extends: [fb_ad_impressions_age_and_gender_template]
}

# Hourly Geo Aggregation
explore: fb_ad_impressions_geo {
  extends: [fb_ad_impressions_geo_template]
}

view: fb_ad_impressions_geo {
  extends: [fb_ad_impressions_geo_template]
}

# Hourly Platform and Device Aggregation
explore: fb_ad_impressions_platform_and_device {
  extends: [fb_ad_impressions_platform_and_device_template]
}

view: fb_ad_impressions_platform_and_device {
  extends: [fb_ad_impressions_platform_and_device_template]
}
