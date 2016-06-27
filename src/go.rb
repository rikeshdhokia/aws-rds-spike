require_relative 'rds_connection'

DB = RdsConnection.new

p DB.inspect

# messages = DB[:messages]

# p messages

