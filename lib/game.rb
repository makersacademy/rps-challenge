require_relative 'player'


class Game
  attr_reader :player_1
  OPPONENT = 'Machine'

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player_1)
    @player_1 = player_1
  end

  def self.create(player_1)
    @game = Game.new(Player.new(player_1))
  end

  def self.instance
    @game
  end

  def machine_select_weapon
    WEAPONS.sample
  end
end
