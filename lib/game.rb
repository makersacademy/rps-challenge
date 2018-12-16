require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def draw?
    @player.move == @computer.move
  end

  def win?(other)
    RULES[@player.move][@computer.move]
  end


  # def name
  #   @player.name
  # end

  # def attack
  #   @player.attack
  # end

end
