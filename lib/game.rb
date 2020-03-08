require_relative 'player'
require_relative 'computer'
class Game
  attr_accessor :player, :computer
  def initialize(player)
    @player = player
    @computer = Computer.new
  end
  
  def result
    if @player.shape == @computer.compchoice
      "It is a draw"
    elsif @player.shape == 'ROCK' && @computer.compchoice == 'SCISSORS'
      "#{@player.name} wins"
    elsif @player.shape == 'PAPER' && @computer.compchoice == 'ROCK'
      "#{@player.name} wins"
    elsif @player.shape == 'SCISSORS' && @computer.compchoice == 'PAPER'
      "#{@player.name} wins"
    else
      "Computer wins"
    end
  end
end
