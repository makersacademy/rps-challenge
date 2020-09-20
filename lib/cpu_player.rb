require_relative './player'

class CPUPlayer < Player

  attr_reader :move

  def initialize
    super('Bobby the Bot')
  end

  def make_move(_)
    @move = ['rock', 'paper', 'scissors'].sample
  end
end
