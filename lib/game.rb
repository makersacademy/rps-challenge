require_relative 'player'
require_relative 'computer'
class Game
  attr_accessor :player, :computer
  def initialize(player)
    @player = player
    @computer = Computer.new
  end

  def self.create(player)
    @game = Game.new(player)
  end
  
  def self.instance
    @game
  end
  
  def result
    if @player.shape == @computer.compchoice
      "It is a draw"
    elsif win?
      "#{@player.name} wins"
    else
      "Computer wins"
    end
  end

  def win?
    @player.shape == 'ROCK' && @computer.compchoice == 'SCISSORS' ||
    @player.shape == 'PAPER' && @computer.compchoice == 'ROCK' ||
    @player.shape == 'SCISSORS' && @computer.compchoice == 'PAPER'
  end
end
