class Player
  attr_reader :name, :option

  def initialize(name)
    @name = name
  end

  def move(option)
    @option = option
  end

  def random_move
    @option = Game::OPTIONS.sample
  end
end
