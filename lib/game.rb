class Game
  attr_reader :player1, :player2

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @players = [player1, player2]
    @player1 = player1
    @player2 = player2
  end

  private
  attr_reader :players
end
