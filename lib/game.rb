require_relative './calculator'

class Game

  attr_reader :player, :weapons, :result

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
    play_game(weapon)
  end

  private

  attr_reader :calc, :opponent

  def create_opponent
    @opponent = weapons.keys.sample
  end

  def value(weapon)
    weapons[weapon.downcase.to_sym]
  end

  def play_game(weapon)
    game_result = calc.compare(value(weapon), value(opponent))
    @result = result_string(game_result, weapon)
  end

  def result_string(game_result, weapon)
    if game_result == :tie
      "<p id='first'>The game was a tie</p>"
    elsif game_result == :win
      "<p id='first'>#{weapon} beats #{opponent}<br>You won!</p>"
    else 
      "<p id='first'>#{opponent} beats #{weapon}<br>You lose, #{player}.</p>"
    end
  end

end
