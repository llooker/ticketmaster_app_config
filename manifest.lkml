project_name: "app-marketing-config"

# Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-bigquery"
  ref: "b431dd8ea69be26391b3545b382ce151c1697711"
  # ref: "ade936f33c368750cf57950947b8a1c7454b949c"
  # previous ref number for reference
}

# LookML to map the ETL and data warehouse for Google Ads
remote_dependency: app-marketing-google-ads-adapter {
  url: "git://github.com/looker/app-marketing-google-ads-fivetran-bigquery"
  ref: "94f220d8940ec15999ecde0bc04d60ba0cf6dba2"
}

# LookML to map the ETL and data warehouse for Facebook Ads
remote_dependency: app-marketing-facebook-ads-adapter {
  url: "git://github.com/looker/app-marketing-facebook-ads-fivetran-bigquery"
  ref: "b96c362fc2761e195d9be7822f0ca440087797e1"
}

# LookML to map the ETL and data warehouse for LinkedIn Ads
# remote_dependency: app-marketing-linkedin-ads-adapter {
#   url: "git://github.com/looker/app-marketing-linkedin-ads-fivetran-bigquery"
#   ref: "d1ec17019ef27a1e42816dfe7833edd38b1a4740"
# }

# LookML to map the ETL and data warehouse for Bing Ads
# remote_dependency: app-marketing-bing-ads-adapter {
#   url: "git://github.com/looker/app-marketing-bing-ads-fivetran-bigquery"
#   ref: "dd8376ae0078787a3975b55311f5fa956d88bcf4"
# }

# LookML for analysis and content for Google Ads
remote_dependency: app-marketing-google-ads {
  url: "git://github.com/looker/app-marketing-google-ads"
  ref: "847f45ca627a7138db360e0e6eae5bc3727fb52b"
}

# LookML for analysis and content for Facebook Ads
remote_dependency: app-marketing-facebook-ads {
  url: "git://github.com/looker/app-marketing-facebook-ads"
  ref: "7cd4187611155c4c69af6afc7e8b2ce6dd190cb9"
}

# LookML for analysis and content for LinkedIn Ads
# remote_dependency: app-marketing-linkedin-ads {
#   url: "git://github.com/looker/app-marketing-linkedin-ads"
#   ref: "5c531de70c67faf5e4e48d2536e4ae1c69aaa111"
# }

# LookML for analysis and content for Bing Ads
# remote_dependency: app-marketing-bing-ads {
#   url: "git://github.com/looker/app-marketing-bing-ads"
#   ref: "204e168ec2ae952a99799d53b6dd2d4636e6db93"
# }

# LookML for analysis and content for cross channel reporting
remote_dependency: app-marketing-crosschannel {
  url: "git://github.com/looker/app-marketing-crosschannel"
  ref: "f02379b957fc4e38489d78ba0e214b638732dcb9"
}
