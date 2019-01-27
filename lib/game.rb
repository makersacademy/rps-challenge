require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :player, :weapon, :computer
  RULES = {
    Rock: { Rock: :draw, Paper: :lose, Scissors: :win },
    Paper: { Rock: :win, Paper: :draw, Scissors: :lose },
    Scissors: { Rock: :lose, Paper: :win, Scissors: :draw }
  }

  def initialize(player, weapon, computer = Computer.new)
    @player = player
    @weapon = weapon
    @computer = computer.option
  end

  def rule
    RULES[@weapon.to_sym][@computer.to_sym]
  end

  def show_results
    if self.rule == :win
      "Well done, you win!"
    elsif self.rule == :lose
      "You lose this time!"
    else
      "It's a draw!"
    end
  end
end
