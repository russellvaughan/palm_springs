GosquaredRails.configure do |config|
  config.site_token = ENV["GOSQUARED_SITE_TOKEN"] || "GSN-747344-B"
  config.track_local = true
end
