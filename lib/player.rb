class Player
  attr_reader :name, :victories, :losses, :ties
  
  def initialize(name)
    @name = name
    @victories = 0
    @losses = 0
    @ties = 0
  end

  def victory_count
    "Wins: #{@victories}, Losses: #{@losses}, Ties: #{@ties}"
  end

  def win
    @victories += 1
  end

  def lose
    @losses += 1
  end

  def tie
    @ties += 1
  end

end