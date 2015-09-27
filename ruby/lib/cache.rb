require "redis"

class Cache
  class << self
    def client
      @client ||= Redis.new(
        host: "127.0.0.1",
        port: 6379,
        db: 'isucon5q'
      )
    end
  end
end
