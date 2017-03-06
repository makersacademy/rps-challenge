class Game

  attr_reader :current_player
  PRIORITY_ORDER =

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
    @opponent_player = player2
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.object
    @game
  end

  def player1
    players.first
  end

  def player2
    players.last
  end

  def switch
    @current_player = opponent_player
    @opponent_player = players.select{|player| player != current_player}.first
  end

  def winner
    precedence = [ 'rock', 'spock', 'paper', 'lizard', 'scissors' ]
    result = ['Draw!', "#{player1.name} won!", "#{player2.name} won!"]
    player2.selection == player1.selection ? result[0] : ((precedence.index(player2.selection) - precedence.index(player1.selection)) % 5 ) < 3 ? result[2] : result[1]
  end

  def both_players_chose?
    !!(player1.selection && player2.selection)
  end

  private
  attr_reader :players, :opponent_player
end
