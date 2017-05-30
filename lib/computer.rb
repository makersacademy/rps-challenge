class Computer

  attr_reader :name

  def initialize(name = 'Computer')
    @name = name
  end

  def choice
    Game::SHAPES.sample
  end
end
