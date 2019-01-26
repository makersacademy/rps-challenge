class Turn
  def initialize(player1, player2)
    @players = [player1, player2]
    @turn_index = 0
  end

  def now
    return @players[@turn_index]
  end

  def not_now
    return @players[@turn_index == 0 ? 1 : 0]
  end
  def change
    @turn_index =@turn_index == 0 ? 1 : 0
  end

end
