equire_relative 'player'
class Game

  attr_reader :shape, :choice

  def initialize(shape)
    @shape = shape
  end

  def shapes
    shapes = {rock: 0, scissors: 1, paper: 2}
  end

  def computers_choice
    comp = @shape.to_a.sample
    @choice = comp[1]
  end

  def result
    result = @shape + @choice



end
