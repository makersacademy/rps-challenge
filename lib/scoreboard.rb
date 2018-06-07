require 'pg'

class Scoreboard
  def self.show
    if ENV['ENVIRONMENT'] == 'test'
      # create a connection to the test database
      connection = PG.connect(dbname: 'rpschallenge_test')
    else
      # create a connection to the production database
      connection = PG.connect(dbname: 'rpschallenge')
    end

    # execute the sql query & store in variable
    result = connection.exec('SELECT * FROM scoreboard;')
    # map the variable, creating a new variable that holds games won and games lost
    result.map { |player| { id: player['id'], gameswon: player['gameswon'], gameslost: player['gameslost']} }
  end

  def self.addscore(id: name, gameswon: won, gameslost: lost)
    if ENV['ENVIRONMENT'] == 'test'
      # create a connection to the test database
      connection = PG.connect(dbname: 'rpschallenge_test')
    else
      # create a connection to the production database
      connection = PG.connect(dbname: 'rpschallenge')
    end
    result = connection.exec("INSERT INTO scoreboard VALUES('#{id}',#{gameswon},#{gameslost});")
  end
end
