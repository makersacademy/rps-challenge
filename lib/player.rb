class Player
  attr_reader :name, :victories, :losses
  
  def initialize(name)
    @name = name
    @victories = 0
    @losses = 0
    @ties
  end

  def victory_count
    "Wins: #{@wins}, Losses: #{@losses}, Ties #{@ties}"
  end

  def win
    @wins += 1
  end

  def lose
    @losses += 1
  end

  def tie
    @ties += 1
  end

end