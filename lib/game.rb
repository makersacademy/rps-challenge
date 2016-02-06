class Game
  def initialize(player)
    @player = player
    @options = ["Rock", "Paper", "Scissors"]
  end
  
  def player
    @player.name
  end
  
  def choose
    @options.sample
  end
end