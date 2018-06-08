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

    if player_exists?(connection, id)
      update_existing_players_score(connection, gameswon, gameslost, id)
    else
      result = connection.exec("INSERT INTO scoreboard VALUES('#{id}',#{gameswon},#{gameslost});")
    end
  end


  def self.player_exists?(connection, id)
    result = connection.exec("SELECT * FROM scoreboard WHERE '#{id}' = id")
    number_of_people_in_database = result.map{|person| person }.length
    number_of_people_in_database > 0
  end

  def self.update_existing_players_score(connection, gameswon, gameslost, id)
    if gameswon == 1
      connection.exec("UPDATE scoreboard SET gameswon = gameswon + 1 WHERE '#{id}' = id;")
    elsif gameslost == 1
      connection.exec("UPDATE scoreboard SET gameslost = gameslost + 1 WHERE '#{id}' = id;")
    end
  end
end
