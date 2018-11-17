class Computer
  attr_reader :name, :move

  MOVES = ['rock', 'paper', 'scissors']

  def initialize
    @name = "Computer"
    @move = MOVES.sample
  end

end
