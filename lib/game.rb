class Game

  attr_reader :player_choice, :robot

  def initialize(player_choice, robot)
    @player_choice = player_choice
    @robot = ['rock', 'paper', 'scissors'].sample
  end

  def player_wins
    (@player_choice == "rock" && @robot == "scissors") ||
      (@player_choice == "paper" && @robot == "rock") ||
    	(@player_choice == "scissors" && @robot == "paper")
  end

end
