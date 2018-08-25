class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def set_move(move = nil)
    @move = (move == nil ? ['ROCK','PAPER','SCISSORS'].sample : move)
  end

end
