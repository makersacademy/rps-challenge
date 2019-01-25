class Cpu

  attr_reader :move, :name

  def initialize
    @move = nil
    @name = "cpu"
  end

  def select_move(move)
    @move = move
  end
end
