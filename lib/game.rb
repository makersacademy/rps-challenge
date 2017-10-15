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
    @player_weapon = weapon
    create_opponent
    play_game
  end

  private

  attr_reader :calc, :opponent, :player_weapon, :game_result

  def create_opponent
    @opponent = weapons.keys.sample
  end

  def value(weapon)
    weapons[weapon.downcase.to_sym]
  end

  def play_game
    @game_result = calc.compare(value(player_weapon), value(opponent))
    @result = result_string
  end

  def result_string
    if game_result == :tie
      "<p id='first'>The game was a tie</p>"
    elsif game_result == :win
      "<p id='first'>#{player_weapon} beats #{opponent}!<br>You won!</p>"
    else 
      "<p id='first'>#{opponent} beats #{player_weapon}.<br>You lose, #{player}.</p>"
    end
  end

end
