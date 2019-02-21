require 'sinatra/base'
require './lib/game.rb'

class Game
  attr_reader :computer_move, :player_move
  def computer_choice
    @computer_move = ["Rock", "Paper", "Scissors"].sample
  end

  def player_choice(choice)
    @player_move = choice
  end

  def game_result
    if ((@player_move == "Rock" && @computer_move == "Scissors") || (@player_move == "Paper" && @computer_move == "Rock") || (@player_move == "Scissors" && @computer_move == "Paper"))
      "You win!"
    elsif ((@computer_move == "Rock" && @player_move == "Scissors") || (@computer_move == "Paper" && @player_move == "Rock") || (@computer_move == "Scissors" && @player_move == "Paper"))
      "Computer wins!"
    elsif ((@computer_move == "Rock" && @player_move == "Rock") || (@computer_move == "Paper" && @player_move == "Paper") || (@computer_move == "Scissors" && @player_move == "Scissors"))
      "It's a draw!"
    else
      "something else"
    end
  end
end
