$redis = Redis.new

url = ENV["REDISCLOUD_URL"]

if ENV["REDISCLOUD_URL"]
    $redis = Redis.new(:url => ENV["REDISCLOUD_URL"])
end

