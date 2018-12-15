require_relative 'move'

class Computer

  POSSIBLE_MOVES = [:rock, :paper, :scissors]
  attr_reader :name, :choice

  def initialize
    @name = 'Computer'
    @choice = POSSIBLE_MOVES.sample
  end

end
