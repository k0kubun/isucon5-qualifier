require "redis"

class Cache
  class << self
    def client
      @client ||= make_client
    end

    def make_client
      if false #File.exist?("/tmp/redis.sock")
        Redis.new(
          path: "/tmp/redis.sock",
          db: 'isucon5q'
        )
      else
        Redis.new(
          host: '127.0.0.1',
          port: 6379,
          db: 'isucon5q'
        )
      end
    end
  end
end
