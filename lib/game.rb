#require 'computer'
require_relative 'player'

class Game

  def play_game
    @player_1 = Player.new(session[:player_1_name],session[:player_1_move])
    @computer = Computer.new
    @player_1_move = @player_1.move
    @computer_move = @computer.computer_move

    if @player_1_move == "rock" && @computer_move == "scissors"
      "Player 1 wins"
    end

    if @player_1_move == "scissors" && @computer_move == "paper"
      "Player 1 wins"
    end

    if @player_1_move == "paper" && @computer_move == "rock"
      "Player 1 wins"
    end

    if @computer_move == "rock" && @player_1_move == "scissors"
      "Player 2 wins"
    end

    if @computer_move == "scissors" && @player_1_move == "paper"
      "Player 2 wins"
    end

    if @computer_move == "paper" && @player_1_move == "rock"
      "Player 2 wins"
    end

    if @player_1_move == @computer_move
      "It's a draw"
    end


  end
end
