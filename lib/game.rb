class Game

  attr_reader :current_player, :opponent_player

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

  def both_players_chose?
    !!(player1.selection && player2.selection)
  end

  private
  attr_reader :players
end
