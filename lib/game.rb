class Game
  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def self.start(player1, player2 = nil)
    @game = Game.new(player1, player2)
  end

  def self.game
    @game
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end
end
