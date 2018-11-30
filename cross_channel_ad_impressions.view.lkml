# Cross channel configuration for Marketing Analytics by Looker

include: "/app-marketing-crosschannel/*.view"
include: "/app-marketing-crosschannel/*.dashboard"

# TODO: Update cross channel to only select relevant NDTs for the data sources included.
view: cross_channel_ad_impressions_dt {
  derived_table: {
    sql:
      SELECT
         "Google" as platform,
          1 AS sort_order,
          google_ads_ad_impressions.channel AS channel,
          google_ads_ad_impressions._date AS _date,
          google_ads_ad_impressions.account_id AS account_id,
          google_ads_ad_impressions.account_name AS account_name,
          google_ads_ad_impressions.campaign_id AS campaign_id,
          google_ads_ad_impressions.campaign_name AS campaign_name,
          google_ads_ad_impressions.ad_group_id AS ad_group_id,
          google_ads_ad_impressions.ad_group_name AS ad_group_name,
          google_ads_ad_impressions.Impressions AS impressions,
          google_ads_ad_impressions.Cost AS cost,
          google_ads_ad_impressions.Conversions AS conversions,
          google_ads_ad_impressions.Clicks AS clicks,
          google_ads_ad_impressions.ConversionValue AS conversionvalue
       FROM ${google_ads_ad_impressions.SQL_TABLE_NAME} as google_ads_ad_impressions ;;
  }
}

#        UNION ALL
#        SELECT
#          "Facebook" as platform,
#           2 AS sort_order,
#           facebook_ads_ad_impressions.channel AS channel,
#           facebook_ads_ad_impressions._date AS _date,
#           facebook_ads_ad_impressions.account_id AS account_id,
#           facebook_ads_ad_impressions.account_name AS account_name,
#           facebook_ads_ad_impressions.campaign_id AS campaign_id,
#           facebook_ads_ad_impressions.campaign_name AS campaign_name,
#           facebook_ads_ad_impressions.ad_group_id AS ad_group_id,
#           facebook_ads_ad_impressions.ad_group_name AS ad_group_name,
#           facebook_ads_ad_impressions.Impressions AS impressions,
#           facebook_ads_ad_impressions.Cost AS cost,
#           facebook_ads_ad_impressions.Conversions AS conversions,
#           facebook_ads_ad_impressions.Clicks AS clicks,
#           facebook_ads_ad_impressions.ConversionValue AS conversionvalue
#        FROM ${facebook_ads_ad_impressions.SQL_TABLE_NAME} as facebook_ads_ad_impressions
#        UNION ALL
#        SELECT
#           cross_channel_impressions.platform as platform,
#           CASE
#             WHEN cross_channel_impressions.platform = "Apple Search Ads" THEN 5
#             WHEN cross_channel_impressions.platform = "DoubleClick" THEN 6
#             WHEN cross_channel_impressions.platform = "Pinterest Ads" THEN 7
#             WHEN cross_channel_impressions.platform = "Twitter Ads" THEN 8
#             WHEN cross_channel_impressions.platform = "Yahoo Gemini" THEN 9
#             ELSE 10
#           END AS sort_order,
#           cross_channel_impressions.channel AS channel,
#           TIMESTAMP(cross_channel_impressions._date) AS _date,
#           cross_channel_impressions.account_id AS account_id,
#           cross_channel_impressions.account_name AS account_name,
#           cross_channel_impressions.campaign_id AS campaign_id,
#           cross_channel_impressions.campaign_name AS campaign_name,
#           cross_channel_impressions.ad_group_id AS ad_group_id,
#           cross_channel_impressions.ad_group_name AS ad_group_name,
#           cross_channel_impressions.Impressions AS impressions,
#           cross_channel_impressions.Cost AS cost,
#           cross_channel_impressions.Conversions AS conversions,
#           cross_channel_impressions.Clicks AS clicks,
#           cross_channel_impressions.ConversionValue AS conversionvalue
#        FROM `bigquery-connectors.crosschannel_generated.channel_stats` as cross_channel_impressions;;
