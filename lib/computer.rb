class Computer

  attr_reader :name, :choice

  POSSIBLE_MOVES = [:rock, :paper, :scissors]

  def initialize
    @name = 'Computer'
    @choice = nil
  end

  def move_choice
    @choice = POSSIBLE_MOVES.sample
  end
end
