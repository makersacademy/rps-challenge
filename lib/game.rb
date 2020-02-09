class Game
  attr_reader :players
  def initialize(player1, player2)
    @players = []
    @players << player1
    @players << player2
    @count = 1
  end
  def current_player?
    @count += 1
    @players[(@count % 2)]
  end
end