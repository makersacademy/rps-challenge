require_relative 'game'

class Computer
  attr_reader :name, :shape

  def initialize(name)
    @name = name
    @shape = nil
  end

  def random_choice
    @shape = Game::SHAPES.sample.capitalize
  end
end