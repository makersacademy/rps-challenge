class Player
  attr_reader :name, :move

  def initialize(name = "Deep Thought")
    @name = name
    @move = nil
  end

  def make_move(move = random_move)
    @move = move
  end

  def random_move
    ['rock', 'paper', 'scissors'].sample
  end
end
