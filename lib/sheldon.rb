class Sheldon

  attr_reader :name

  def initialize
    @name = "Sheldon"
  end

  def move
    Game::ACTIONS.sample
  end

end
