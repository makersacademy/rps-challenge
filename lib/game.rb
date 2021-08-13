class Game
  attr_reader :player1, :player2, :winner

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @winner = nil
  end
end
