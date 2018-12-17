require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer

  RULES = { :rock => "scissors",
            :paper => "rock",
            :scissors => "paper" }

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def draw?
    @player.move == @computer.move.to_sym
  end

  def win?
    RULES[@player.move][@computer.move] ? true : false
  end

end
