require_relative 'game'

class Computer
  attr_reader :name, :shape

  def initialize(name)
    @name = name
    @shape = nil
  end

  def random_choice
    Game::SHAPES.sample
  end
end