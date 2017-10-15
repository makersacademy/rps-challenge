require_relative './calculator'

class Game

  attr_reader :player, :weapons, :result, :player_choice, :comp_choice

  def initialize(player, calculator = nil)
    @calc = calculator || Calculator.new
    @player = player
    @weapons = { 
      rock: 1, 
      paper: 2, 
      scissors: 3,
      spock: 4,
      lizard: 5
    }
  end

  def self.create_game(player)
    @game = Game.new(player)
  end

  def self.current_game
    @game
  end

  def play(weapon)
    @player_choice = weapon
    generate_comp_choice
    play_game
  end

  private

  attr_reader :calc

  def generate_comp_choice
    @comp_choice = weapons.keys.sample
  end

  def value(weapon)
    weapons[weapon.downcase.to_sym]
  end

  def play_game
    @result = calc.compare(value(player_choice), value(comp_choice))
  end

end
