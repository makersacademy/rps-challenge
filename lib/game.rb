require_relative 'player'
require_relative 'computer'

class Game

  def initialize(player, computer)
    @weapon1 = player.weapon.to_sym
    @weapon2 = computer.choice.to_sym
  end

  def outcome
    draw? ? "It's a draw!" : win
  end

  private

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def win
    if @weapon2 == RULES[@weapon1]
      "You win!"
    elsif @weapon1 == RULES[@weapon2]
      "The computer wins!"
    end
  end

  def draw?
   @weapon1 == @weapon2 ? true : false
  end

 end
