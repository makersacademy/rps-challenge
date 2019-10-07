#require 'computer'
require_relative 'player'
#require_relative 'app.rb'

class Game

  def initialize(player_1_move,computer_move)
    @player_1_move = player_1_move
    @computer_move = computer_move
  end

  def play_game
    #@player_1 = Player.new(session[:player_1_name],session[:player_1_move])
    #@computer = Computer.new
    #@player_1_move = @player_1.move
    #@computer_move = @computer.computer_move

    if @player_1_move == "rock" && @computer_move == "scissors"
      "You win!"
    elsif
      @player_1_move == "scissors" && @computer_move == "paper"
      "You win!"
    elsif
      @player_1_move == "paper" && @computer_move == "rock"
      "You win!"
    elsif
      @computer_move == "rock" && @player_1_move == "scissors"
      "You lose"
    elsif
      @computer_move == "scissors" && @player_1_move == "paper"
      "You lose"
    elsif
      @computer_move == "paper" && @player_1_move == "rock"
      "You lose"
    elsif
      @player_1_move == "rock" && @computer_move == "rock"
      "It's a draw"
    elsif
      @player_1_move == "paper" && @computer_move == "paper"
      "It's a draw"
    elsif
      @player_1_move == "scissors" && @computer_move == "scissors"
      "It's a draw"
    end
    #return @computer_move
  end
end
