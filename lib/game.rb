class Game

  attr_reader :players

  def initialize(player1)
    @player1 = player1
    @players = [@player1]
  end

end
