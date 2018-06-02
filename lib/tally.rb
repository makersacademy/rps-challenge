class Tally
  attr_reader :wins, :losses

  def initialize
    @wins = 0
    @losses = 0
  end

  def win
    @wins += 1
  end

  def lose
    @losses += 1
  end

end
