require 'pg'
require_relative 'database_connection'

class DatabaseConnection

  def self.setup(dbname)
    connection = pg_connection
    @connection = PG.connect('postgres://oilfaxhbqovhdj:f1a4c5e7a499b5476a202fd6d46bfa69c31d582bd5f6bd0a7154c35fea44f621@ec2-44-206-11-200.compute-1.amazonaws.com:5432/daovotsf76t904')
  end

  def self.query(sql, params = [])
    connection = pg_connection
    @connection.exec_params(sql, params)
  end

  def self.pg_connection
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect("postgres://tjcpisthcdezaj:e8888f176d8c4a9279a0c01b0ab685b3c51d82a97c406f0778ac35dccb85bfb1@ec2-3-213-228-206.compute-1.amazonaws.com:5432/db76t2s6m0vebl")
    end
  end

end