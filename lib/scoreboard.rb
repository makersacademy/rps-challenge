require 'pg'

class Scoreboard
  def self.show
    # create a connection with the database
    connection = PG.connect(dbname: 'rpschallenge')
    # execute the sql query & store in variable
    result = connection.exec('SELECT * FROM scoreboard')
    # map the variable, creating a new variable that holds games won and games lost
    result.map { |player| { id: player['id'], gameswon: player['gameswon'], gameslost: player['gameslost']} }
  end
end

scoreboard = Scoreboard.show

p scoreboard
