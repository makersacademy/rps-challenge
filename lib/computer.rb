class Computer

  attr_reader :name

  def initialize
    @name = 'Rival'
  end

  def move
    [:bulbasaur, :squirtle, :charmander].sample
  end

  def beats?(opponent_move)
    Game::RULES[move] == opponent_move
  end

end
