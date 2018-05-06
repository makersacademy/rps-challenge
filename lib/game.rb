require_relative '../lib/player'
require_relative '../lib/computer'

class Game

  WEAPON = [:rock, :paper, :scissors]
  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  attr_reader :player_weapon, :computer_weapon, :result, :player, :computer

  def self.create(player, computer)
    @game = new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @player = player.name
    @computer = computer.name
    @result = nil
  end

  def add_player_weapon(choice)
    @player_weapon = choice
  end

  def add_computer_weapon
    @computer_weapon = WEAPON.sample
  end

  def set_result
    @result = :win if RULES[player_weapon] == computer_weapon
    @result = :lose if RULES[computer_weapon] == player_weapon
    @result = :draw if computer_weapon == player_weapon
  end
end
