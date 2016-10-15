require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer

  @@choices = ["Rock", "Paper", "Scissors"]

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.choices
    @@choices
  end

end
