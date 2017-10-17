require_relative './calculator'
require_relative './player'

class Game

  attr_reader :weapons, :result, :type

  WEAPONS = [:rock, :paper, :scissors, :spock, :lizard]

  def initialize(type, calculator = nil)
    @calc = calculator || Calculator.new
    @weapons = WEAPONS
    @type = type.to_sym
  end

  def play(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    player_2.choose(computer_choice) if player_2.name.nil?
    play_game
  end

  private

  attr_reader :calc, :player_1, :player_2

  def computer_choice
    weapons.sample
  end

  def get_index(weapon)
    weapons.index(weapon.downcase.to_sym)
  end

  def play_game
    @result = calc.compare(get_index(player_1.choice), get_index(player_2.choice))
  end

end
