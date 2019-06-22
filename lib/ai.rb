class Ai
  
  VALID_MOVE = ['Rock', 'Paper', 'Scissors']
  attr_reader :name, :move

  def initialize
    @move = random_move
    @name = 'WOPR'
  end

  def random_move
    @move = VALID_MOVE.sample
  end
end
