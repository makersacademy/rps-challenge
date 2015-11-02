require_relative 'game'

class Computer
  attr_reader :name, :shape

  def initialize
    @name = "Computer"
  end

  def shape
    Game::SHAPES.sample
  end
end