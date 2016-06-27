class RdsConnection

  def initialise()
      Dotenv.load

      Sequel.postgres(ENV['DB_NAME'], user: ENV['DB_USER'],
        password: ENV['DB_PASSWORD'], host: ENV['DB_HOST'], port: ENV['DB_PORT'])
    end

end
