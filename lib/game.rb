require_relative 'player'
require_relative 'computer'

class Game

  RULES = {
  	rock: {rock: :draw, paper: :lose, scissors: :win},
  	paper: {rock: :win, paper: :draw, scissors: :lose},
  	scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  attr_reader :player_name, :player_weapon, :computer_weapon

  def initialize(options)
  	@player_name = options["player_name"]
  	@player_weapon = options["player_weapon"]
  	@computer_weapon = options["computer_weapon"]
  end

  def win?
    result == :win
  end

  def lose?
    result == :lose
  end

  def draw?
    result == :draw
  end
  
  private

  def result
  	return if @computer_weapon.nil?
  	RULES[@player_weapon][@computer_weapon]
  end

end
