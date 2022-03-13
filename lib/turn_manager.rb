class TurnManager

  attr_reader :turn

  def initialize
    @turn = 0
  end

  def change_turn
    @turn += 1
  end

  def reset
    @turn = 0
  end

end