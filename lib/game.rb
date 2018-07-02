require_relative 'computer'
require_relative 'player'

class Game
  attr_reader :player_choice, :computer_choice
  RULES = { rock: { rock: :draw, scissors: :win, paper: :lose },
            scissors: { rock: :lose, scissors: :draw, paper: :win },
            paper: { rock: :win, scissors: :lose, paper: :draw } }

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def player_1
    @player
  end

  def player_action(weapon)
    @player_choice = @player.weapon(weapon)
  end

  def computer_action
    @computer_choice = @computer.weapon
  end

  def result
    RULES[player_choice.to_sym][computer_choice.to_sym]
  end
end
