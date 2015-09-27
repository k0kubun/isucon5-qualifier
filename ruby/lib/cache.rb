require "redis"
require 'dalli'

class Cache
  class << self
    def client
      @client ||= make_dalli_client
    end

    def make_dalli_client
      Dalli::Client.new('127.0.0.1:11211')
    end

    def make_client
      if File.exist?("/tmp/redis.sock")
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
