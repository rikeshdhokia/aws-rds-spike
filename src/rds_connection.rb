require 'dotenv'
require 'sequel'

class RdsConnection

  def initialize()
      Dotenv.load
  end

  def connect
    Sequel.connect(:adapter=>'postgres', :database => ENV['DB_NAME'], :user => ENV['DB_USER'],
        :password => ENV['DB_PASSWORD'], :host =>ENV['DB_HOST'], :port=>ENV['DB_PORT'])
  end

end
