class Player

  attr_accessor :name, :move

  def beats?(opponent_move)
    Game::RULES[@move] == opponent_move
  end

end
