class Console
  attr_reader :move

  def initialize
    @move = random_move
  end

  def random_move
    ['Paper', 'Rock', 'Scissors'].sample
  end
end
