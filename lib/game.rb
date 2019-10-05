
class Game

  attr_reader :player1, :player2, :players

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

  def add(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
  end
end
