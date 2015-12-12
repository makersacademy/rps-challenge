require_relative 'player'
require_relative 'weapon'

class Game

  attr_reader :players, :player_1

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  def initialize(player_klass = Player.new(:name_1),
                 weapon_klass = Weapon.new(:rock, :paper))
    @player_1 = player_klass
    @players  = {p1: player_1}
    @weapon   = weapon_klass
  end

  def player_name_1
    players[:p1].name
  end

  def random_option
    WEAPONS.sample
  end
end
