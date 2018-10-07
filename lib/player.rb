class Player

  attr_reader :name, :move

  RULES = { charmander: :bulbasaur,
            squirtle: :charmander,
            bulbasaur: :squirtle }

  def save_name(name)
    @name = name
  end

  def save_move(move)
    @move = move
  end

  def beats?(opponent_move)
    move = @move.downcase.to_sym
    RULES[move] == opponent_move.downcase.to_sym
  end

end
