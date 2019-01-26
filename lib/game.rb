require 'player'
require 'computer'

class Game

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end


  def result
    if @player.choice == @computer.choice
      @winner = "draw"
    elsif @player.choice == :rock and @computer.choice == :scissors
      @winner = @player
    elsif @player.choice == :paper and @computer.choice == :rock
      @winner = @player
    elsif @player.choice == :scissors and @computer.choice == :paper
      @winner = @player
    elsif
      @winner = @computer
    end
  end
end 
