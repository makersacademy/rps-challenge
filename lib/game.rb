class Game
  attr_reader :player_move
  def attack(move)
    @player_move = move
  end
end
