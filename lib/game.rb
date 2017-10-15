
class Game
  attr_reader :comp_choice

  def initialize(player_choice)
   @player_choice = player_choice
   @comp_choice = 'rock'
  end

  def rand_choice
   arr = ['rock', 'paper', 'scissors'].shuffle
   @comp_choice = arr[0]
  end

  def play
    if @player_choice == @comp_choice
      "It is a draw!"
    elsif @player_choice == 'rock' && @comp_choice == 'paper'
      "Computer wins!"
    elsif @player_choice == 'rock' && @comp_choice == 'scissors'
      "You win!"
    elsif @player_choice == 'paper' && @comp_choice == 'rock'
      "You win!"
    elsif @player_choice == 'paper' && @comp_choice == 'scissors'
      "Computer wins!"
    elsif @player_choice == 'scissors' && @comp_choice == 'paper'
      "You win!"
    else
      "Computer wins!"
    end
  end

end
