class Computer

  MOVE = ["Rock", "Paper", "Scissors"]

  attr_reader :choice

  def initialize
    @choice = nil
  end 

  def randomly_choose(move = MOVE)
    @choice = move if move.is_a? String
    @choice = move.sample if move.is_a? Array
  end
end