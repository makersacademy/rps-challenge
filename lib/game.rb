class Game

  attr_reader :player, :robot

  def initialize(player, robot)
    @player = player
    @robot = ['rock', 'paper', 'scissors'].sample
  end

  def player_wins
    (@player == "rock" && @robot == "scissors") ||
      (@player == "paper" && @robot == "rock") ||
    	(@player == "scissors" && @robot == "paper")
  end

end
