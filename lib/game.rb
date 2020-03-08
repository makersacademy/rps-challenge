require_relative 'computer'

class Game

  attr_reader :computer

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  def initialize(player, computer = Computer.new)
    @player_weapon = player.weapon.to_sym
    @computer = computer
  end

  def result
    return :draw if draw?
    return :win if win?
  end

  private

  def draw?
    @player_weapon == @computer.weapon
  end

  def win?
    RULES[@player_weapon] == @computer.weapon
  end

end
