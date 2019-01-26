class Computer
  attr_reader :name, :move

  def initialize(name = "RPS Bot")
    @name = name
    @move = nil
  end

  def make_move
    @move = ['rock', 'paper', 'scissors'].sample
  end
end
