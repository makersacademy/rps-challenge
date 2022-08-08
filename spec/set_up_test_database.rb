require 'pg'

def set_up_test_database

  p 'Setting up test database'

  connection = PG.connect(dbname: 'rps_test')
  # connection.exec('TRUNCATE scores;')

end
