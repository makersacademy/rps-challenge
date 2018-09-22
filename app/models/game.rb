class Game
  attr_reader :p1, :p2, :players, :turn, :winner

  def initialize(p1, p2)
    @p1       = p1
    @p2       = p2
    @players  = [@p1, @p2]
    @turn     = @p1
  end

  def switch
    self.turn = opposite_of(turn)
  end

  def opposite_of(player)
    players.detect { |choice| choice != player }
  end

  def loser
    opposite_of(winner)
  end

  attr_writer :turn, :winner
end
