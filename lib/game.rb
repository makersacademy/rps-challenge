require_relative 'computer'

class Game
  OPTIONS = [:Rock, :Paper, :Scissors]
  attr_reader :player, :winner
  attr_accessor :choice

  def initialize(player)
    @player = player
    @choice = nil
    @computer = Computer.new
  end

  def winner
    if @choice.to_sym == @computer.choice
      "It's a draw!"
    end
  end

end
