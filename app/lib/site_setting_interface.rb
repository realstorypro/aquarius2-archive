# frozen_string_literal: true

# Responsible for setting, retrieving and erasing the SiteSettings
class SiteSettingInterface
  include Singleton

  def initialize
    @redis = Redis::Namespace.new("goodlogik", redis: Redis.new)
    @namespace = "site_settings"
  end

  # Retrieves settings from the DB, converts them to JSON and stores them in Redis
  def update
    site_settings = Hash.new
    site_settings[:theme] = {}
    site_settings[:theme][:header] = SiteSettings::Theme::Header.instance.payload
    site_settings[:theme][:auth] = SiteSettings::Theme::Authentication.instance.payload
    site_settings[:theme][:branding] = SiteSettings::Theme::Branding.instance.payload

    site_settings = site_settings.to_json
    @redis.set @namespace, site_settings
  end

  # Returns JSON from the redis if exists otherwise returns nil
  def fetch
    json = @redis.get(@namespace)
    if json.nil?
      update
      json = @redis.get(@namespace)
    end

    JSON.parse(json)
  end

  # Erases Redis Cache
  # @note the cache is only deleted after the object was initialized
  #   for the first time. Otherwise false is returned.

  def clear_cache
    @redis.del @namespace
    true
  end
end
