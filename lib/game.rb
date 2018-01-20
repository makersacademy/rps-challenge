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

  private

  RULES = { rock: :scissors,
	   paper: :rock,
     scissors: :paper }

  def beats?
    RULES[player_1.weapon]==player_2.weapon
  end

  def draw?
   player_1.weapon == player_2.weapon
  end

  def winner
    beats? ? @player_1 : @player_2
  end
end

# require './lib/game'
# p1 = player_1.new('l')
# p2 = player_1.new('s')
# p2.weapon_choice('rock')
# p1.weapon_choice('paper')
# game = Game.new(p1,p2)
