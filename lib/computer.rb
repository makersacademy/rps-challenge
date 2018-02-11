class Computer

  attr_reader :name, :move

  def initialize
    @name = "RPSbot"
  end

  def computer_move
    @move = [:rock, :paper, :scissors].sample
  end

end
