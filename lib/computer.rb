class Computer
  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :move, :name

  def initialize
    @name = 'Computer'
  end

  def make_move
    @move = WEAPONS.sample
  end
end
