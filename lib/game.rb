require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :winner
  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
    @winner
  end

  def determine_winner
    if @player.choice == @computer.choice
      @winner = :Draw
    elsif @player.choice == :Rock and @computer.choice == :Scissors
      @winner = true
    elsif @player.choice == :Paper and @computer.choice == :Rock
      @winner = true
    elsif @player == :Scissors and @computer.choice == :Paper
      @winner = true
    else 
      @winner = false
    end 
  end

end
