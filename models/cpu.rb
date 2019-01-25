class Cpu

  attr_reader :move

  def initialize
    @move = nil
  end

  def select_move(move)
    @move = move
  end
end
