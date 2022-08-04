require './lib/database_connection'

if ENV['RACK_ENV'] == 'test'
  DatabaseConnection.setup('rps_test')
else
  DatabaseConnection.setup('rps')
end