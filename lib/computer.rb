class Computer

  attr_reader :moves_array

  def initialize
    @moves_array = [:rock, :paper, :scissors]
  end

  def play
    moves_array.sample
  end

end
