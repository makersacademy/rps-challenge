require_relative 'player'

class Game

  def self.build(player_1,player_2 = ComputerPlayer.new)
    @game = self.new(player_1,player_2)
  end

  def self.instance
    @game
  end

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def result
    draw? ? :draw : winner
  end

  def set_player_1_weapon(weapon)
    player_1.weapon_choice(weapon)
  end

  def set_player_2_weapon(weapon = nil)
    player_2.weapon_choice(weapon)
  end

  private
  RULES = { rock: [:scissors, :lizard],
  			    paper: [:rock, :spock],
      			scissors: [:paper, :lizard],
      			spock: [:scissors, :rock],
      			lizard: [:paper, :spock] }

  def beats?
    RULES[player_1.weapon].include?(player_2.weapon)
  end

  def draw?
   player_1.weapon == player_2.weapon
  end

  def winner
    beats? ? @player_1 : @player_2
  end
end
