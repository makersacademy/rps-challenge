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
    case @player_move
    when "Rock"
      @computer_move == "Scissors" ? "You win!" : @computer_move == "Paper" ? "Computer wins!" : "It's a draw!"
    when "Paper"
      @computer_move == "Rock" ? "You win!" : @computer_move == "Scissors" ? "Computer wins!" :  "It's a draw!"
    when "Scissors"
      @computer_move == "Paper" ? "You win!" : @computer_move == "Rock" ? "Computer wins!" : "It's a draw!"
    end
  end
end
