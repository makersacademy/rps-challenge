require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :outcome, :player, :computer

  def initialize(player, computer = Computer.new)
    @player = Player.new(player)
    @computer = computer
  end

  def outcome
    if @player.current_pick == "rock" && @computer.current_pick  == "scissors"
      "You win"
    elsif @player.current_pick  == "scissors" && @computer.current_pick  == "paper"
      "You win"
    elsif @player.current_pick  == "paper" && @computer.current_pick  == "rock"
      "You win"
    elsif @player.current_pick  == "rock" && @computer.current_pick  == "paper"
      "You lose"
    elsif @player.current_pick  == "scissors" && @computer.current_pick  == "rock"
      "You lose"
    elsif @player.current_pick  == "paper" && @computer.current_pick  == "scissors"
      "You lose"
    else
      "You draw"
    end
  end

end
