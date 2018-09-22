class Player
  attr_reader :name, :move
  COMPUTER_NAME = 'Computer - Hal'

  def initialize(name: nil)
    @name = name || COMPUTER_NAME
  end

  def make_move(move)
    @move = move
  end

end
