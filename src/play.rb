require 'pg'
require 'dotenv'

Dotenv.load

connection_hash = {
  host: ENV["DB_HOST"],
  port: ENV["DB_PORT"],
  dbname: ENV["DB_NAME"],
  user: ENV["DB_USER"],
  password: ENV["DB_PASSWORD"]
}

connection = PG::Connection.new(connection_hash)

p connection
