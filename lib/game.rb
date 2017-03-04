class Game

  def initialize(player1, player2)
    @players = [player1, player2]
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

  private
  attr_reader :players
end
