
class Player
  attr_reader :name, :wins, :losses, :draws, :won_last_game, :drew_last_game
  def initialize(name)
    @name = name
    @wins = 0
    @losses = 0
    @draws = 0
  end

  def winner
    @won_last_game = true
    @drew_last_game = false
    @wins += 1
  end
  
  def loser
    @won_last_game = false
    @drew_last_game = false
    @losses += 1
  end

  def drew
    @won_last_game = false
    @drew_last_game = true
    @draws += 1 
  end

end