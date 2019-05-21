require_relative 'game'
require_relative 'computer'
require_relative 'player'

class ResultCalculator

  def initialize(player_move, computer_move)
    @player_move = player_move
    @computer_move = computer_move
  end

  def who_won
    return "Draw" if @computer_move == @player_move

    if @player_move  == 'rock' && @computer_move == 'scissors'
      return "You win"
    else @player_move == 'rock' && @computer_move == 'paper'
      return "You loose"
    # elsif @player.move == 'paper' && @computer.move == 'scissors'
    #   return "You loose"
    # elsif @player.move == 'paper' && @computer.move == 'rock'
    #   return "You win"
    # elsif @player.move == "scissors" && @computer.move == 'rock'
    #   return "You lose"
    # else @player.move == "scissors" && @computer.move == "paper"
    #   return "You win"
    end
  end

end
