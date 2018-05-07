class Computer
  attr_reader :move, :name

  def initialize
    @name = 'Computer'
  end

  def make_move
    @move = [:rock, :paper, :scissors].sample
  end
end
