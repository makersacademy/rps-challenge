class ComputerMove
  attr_reader :move

  MOVES = ['rock', 'paper', 'scissors']

  def initialize
    @move = MOVES.sample
  end

end
