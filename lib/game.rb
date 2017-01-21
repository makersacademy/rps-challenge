require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def won?(moves = [player.choice, computer.choice])
    moves == [:rock, :scissors] || moves == [:paper, :rock] || moves == [:scissors, :paper]
  end

  def draw?(moves = [player.choice, computer.choice])
    moves == [:rock, :rock] || moves == [:paper, :paper] || moves == [:scissors, :scissors]
  end

end
