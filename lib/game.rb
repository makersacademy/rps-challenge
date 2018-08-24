class Game
  attr_reader :players
  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end
end