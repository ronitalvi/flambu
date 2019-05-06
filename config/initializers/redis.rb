uri = URI.parse("redis://rediscloud:hBkXgqI1QbcuC9780zoyW9IqN78nr9II@redis-18440.c59.eu-west-1-2.ec2.cloud.redislabs.com:18440")
$redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)


##burda sorun var
