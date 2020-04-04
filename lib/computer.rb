class Computer

  attr_reader :computer_turn

  def initialize
    @computer_turn = nil
  end

  def go(move)
    @computer_turn = move
  end

end
