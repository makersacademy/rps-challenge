class Game

  attr_reader :player_choice, :robot, :player

  def initialize(player_choice, robot, player)
    @player_choice = player_choice
    @robot = ['rock', 'paper', 'scissors'].sample
    @player = player
  end

  def player_wins
    (@player_choice == "rock" && @robot == "scissors") ||
      (@player_choice == "paper" && @robot == "rock") ||
    	(@player_choice == "scissors" && @robot == "paper")
  end

  def result
    if @player_choice == @robot
      "It's a draw"
    elsif player_wins == true
      "#{@player} wins"
    else
      "#{@player} loses"
    end
  end
end
