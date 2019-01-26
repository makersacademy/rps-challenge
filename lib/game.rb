require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :winner

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
    @winner
  end


  def result
    if @player.choice == @computer.choice
      @winner == "draw"
    elsif @player.choice == :rock and @computer.choice == :scissors
      @winner = @player
    elsif @player.choice == :paper and @computer.choice == :rock
      @winner = @player
    elsif @player.choice == :scissors and @computer.choice == :paper
      @winner == @player
    else
      @winner == @computer
    end
  end
end
