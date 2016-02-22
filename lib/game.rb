require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player_1, :computer_turn, :player_weapon

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player_1_name, computer=Computer.new, player_klass = Player)
    @player_1 = player_klass.new(player_1_name)
    @computer = computer
  end

  # def start_game(player_weapon)
  #   @player_weapon = player_weapon
  # end

  def player_win?
    RULES[@player_weapon] == computer.weapons.to_s
  end

  def draw?
    computer.weapons == player_weapon
  end

  def result
    if draw?
      :draw
    elsif player_win?
      :win
    else
      :lose
    end
  end

end
