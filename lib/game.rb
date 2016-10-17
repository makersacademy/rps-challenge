class Game
  attr_accessor :player
  def self.game
    @@game
  end

  def self.game(player1, comp_player)
    @@game = Game.new(player1, comp_player)
  end

  def initialize(player1, comp_player)
    @player = [player1, comp_player]
  end

  def evaluate(player, comp)
    result = player - comp
    result = result.abs
    if result == 1 || result == 2
      "You won!"
    elsif result == 3 || result == 4
     "The computer won"
   else
     "You draw"
   end
  end
end
