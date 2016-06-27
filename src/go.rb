require_relative 'rds_connection'
require 'securerandom'
require 'forgery'

DB = RdsConnection.new.connect()

# DB.create_table :messages do
#   primary_key :id, :uuid
#   column :title, :text
#   String :content
#   index :title
# end

messages = DB[:messages]


(1..1000).each {
  out = messages.insert({ id: SecureRandom.uuid, title: Forgery::Name.full_name, content: Forgery('lorem_ipsum').text})
  puts out
}

