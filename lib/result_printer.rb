class ResultPrinter
  def initialize(player_1, player_2, result)
    @p1 = player_1
    @p2 = player_2
    @result = result
  end

  def print
    return "#{@p1.name} has won!" if @result == :player_1_wins
    return "#{@p2.name} has won!" if @result == :player_2_wins
    return "It's a draw!" if @result == :draw
  end
end
