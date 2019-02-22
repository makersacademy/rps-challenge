class Game
  def initialize(player_move = $player_move)
    @player_move = player_move
  end

  def play
    ['Rock', 'Paper', 'Scissors'].sample
  end

end
