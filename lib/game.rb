require_relative 'player'

class Game

  def self.build(player_1,player_2 = ComputerPlayer.new)
    @game = self.new(player_1,player_2)
  end

  def self.instance
    @game
  end

  attr_reader :player, :computer_player

  def initialize(player, computer_player)
    @player = player
    @computer_player = computer_player
  end

  def result
    draw? ? :draw : winner
  end

  def set_player_weapon(weapon)
    player.weapon_choice(weapon)
  end

  private

  RULES = { rock: :scissors,
	   paper: :rock,
     scissors: :paper }

  def beats?
    RULES[player.weapon]==computer_player.weapon
  end

  def draw?
   player.weapon == computer_player.weapon
  end

  def winner
    beats? ? @player : @computer_player
  end
end

# require './lib/game'
# p1 = Player.new('l')
# p2 = Player.new('s')
# p2.weapon_choice('rock')
# p1.weapon_choice('paper')
# game = Game.new(p1,p2)
