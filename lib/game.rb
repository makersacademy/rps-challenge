class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def self.start(game_instance)
    @current = game_instance
  end

  def self.read
    @current
  end

end
