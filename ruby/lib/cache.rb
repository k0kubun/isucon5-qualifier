require "redis"

class Cache
  class << self
    def client
      @client ||= Redis.new(
        path: "/tmp/redis.sock",
        db: 'isucon5q'
      )
    end
  end
end
