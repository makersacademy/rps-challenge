require_relative 'player'
require_relative 'computer'
class Game
  attr_accessor :player, :computer
  def initialize(player)
    @player = player
    @computer = Computer.new
  end

  def result
    if @player.shape == @computer.choice
      "It is a draw"
    elsif @player.shape == 'ROCK' && @computer.choice == 'SCISSORS'
      "#{@player.name} wins"
    elsif @player.shape == 'PAPER' && @computer.choice == 'ROCK'
      "#{@player.name} wins"
    elsif @player.shape == 'SCISSORS' && @computer.choice == 'PAPER'
      "#{@player.name} wins"
    else
      "Computer wins"
    end
  end
end