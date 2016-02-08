require_relative 'player'
require_relative 'computer'

class Game

  OPTIONS = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def player_choose(option)
    @player.choose(option)
  end

  def computer_choose
    @computer.choose_option
  end

  def result
    if @player.option != @computer.option
      OPTIONS[@player.option] == @computer.option ? 'You won!' : 'You lost'
    else
      "Tie"
    end
  end
end
