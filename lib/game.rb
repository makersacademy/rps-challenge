require_relative 'player'
require_relative 'computer_player'
class Game

WEAPON_OPTIONS = [:rock, :paper, :scissors]
GAME_RULES = {rock: :scissors, paper: :rock, scissors: :paper}

  attr_reader :player1, :computer_player

  def initialize(player1, computer_player)
    @player1 = player1
    @computer_player = computer_player
  end

  def player_choose_weapon(weapon)
    @player1.choose_weapon(weapon)
  end

  def computer_choose_weapon
    @computer_player.choose_weapon
  end

  def draw?
    @player1.weapon_choice == @computer_player.weapon_choice
  end

  def winner
    GAME_RULES[@player1.weapon_choice] == @computer_player.weapon_choice ? @player1 : @computer_player
  end

end
