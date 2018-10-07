class Computer

  attr_reader :name, :move

  def initialize
    @name = 'Rival'
  end

  def make_move
    @move = [:bulbasaur, :squirtle, :charmander].sample
  end

  def beats?(opponent_move)
    Game::RULES[@move] == opponent_move
  end

end
