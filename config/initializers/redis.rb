# Deleting Site Settings on Restart
redis = Redis::Namespace.new("goodlogik", redis: Redis.new)
namespace = "site_settings"

redis.del namespace
