require 'mongo_mapper'
require 'date'

# hostname = mongodbIPAddress or hostname
# mongodb_port = mongodbPort
# mongodbconnect
MongoMapper.connection = Mongo::Connection.from_uri("mongodb://xxx.xxx.xxx.xxx:xxxxx")
# DBconnect
MongoMapper.database = 'ruby_mongo'

# make class
class AutoUserCreate
	include MongoMapper::Document
	key :name,String
	key :user_id,Integer
	key :_id,Integer
end

# Main
# DB ADD CORECTION AND USERS
(1..200000).each do |i|
	date = Time.now.to_i
	AutoUserCreate.create(:_id=>date,:user_id => i,:name => "rusla_#{i}")
end
