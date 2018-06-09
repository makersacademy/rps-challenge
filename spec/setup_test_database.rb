require 'pg'

def setup_test_database!

  p "Setting up test database..."

  # Connect to the test database
  connection = PG.connect(dbname: 'rpschallenge_test')

  # Clear the database
  connection.exec("TRUNCATE scoreboard;")

end
