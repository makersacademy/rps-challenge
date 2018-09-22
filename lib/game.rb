class Game

  attr_reader :players

  def initialize(player1)
    @players = [player1]
  end

  def store_move(selected_move)
    @players.first.store_move(selected_move)
  end
end
