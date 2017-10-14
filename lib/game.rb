require_relative './calculator'

class Game

  attr_reader :player, :weapons, :result, :opponent

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
    create_opponent
    @result = calc.compare(value(weapon), value(opponent))
  end

  private

  attr_reader :calc

  def create_opponent
    @opponent = weapons.keys.sample
  end

  def value(weapon)
    weapons[weapon.downcase.to_sym]
  end

end
