# require 'pg'

# class DatabaseConnection

#   # def self.setup(dbname)
#   #   connection = pg_connection
#   #   @connection = PG.connect('postgres://oilfaxhbqovhdj:f1a4c5e7a499b5476a202fd6d46bfa69c31d582bd5f6bd0a7154c35fea44f621@ec2-44-206-11-200.compute-1.amazonaws.com:5432/daovotsf76t904')
#   # end

#   def self.query
#     connection = pg_connection
#     connection.exec_params(query)
#   end

#   def self.pg_connection
#     if ENV['ENVIRONMENT'] == 'test'
#       connection = PG.connect(dbname: 'rps_test')
#     else
#       connection = PG.connect("postgres://oilfaxhbqovhdj:f1a4c5e7a499b5476a202fd6d46bfa69c31d582bd5f6bd0a7154c35fea44f621@ec2-44-206-11-200.compute-1.amazonaws.com:5432/daovotsf76t904")
#     end
#   end

# end



require 'pg'

class DatabaseConnection

  def self.setup
    @connection = PG.connect("postgres://oilfaxhbqovhdj:f1a4c5e7a499b5476a202fd6d46bfa69c31d582bd5f6bd0a7154c35fea44f621@ec2-44-206-11-200.compute-1.amazonaws.com:5432/daovotsf76t904")
  end

  def self.query(sql, params = [])
    @connection.exec_params(sql, params)
  end

end