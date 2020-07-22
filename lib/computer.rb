class Computer

  attr_reader :move

  def initialize
    @move = [:rock, :paper, :scissors].sample
  end

  def change_move
    @move = [:rock, :paper, :scissors].sample
  end

end
