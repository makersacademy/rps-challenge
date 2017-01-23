require_relative 'computer'
require_relative 'player'

class Game
  attr_reader :player, :player_weapon, :computer, :computer_weapon
  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def self.instance
    @game
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def player_choice(weapon)
    @player_weapon = weapon.to_sym
  end

  def computer_choice
    @computer_weapon = @computer.random_choice
  end

  def result
    return :win if beat?
    return :draw if (@player_weapon) == (@computer_weapon)
    return :lose if lose?
  end

  def calculate_result
    @player.add_win if beat?
    @computer.add_win if lose?
  end

private

def beat?
  RULES[@player_weapon]== @computer_weapon
end

def lose?
  RULES[@computer_weapon]== @player_weapon
end



end
