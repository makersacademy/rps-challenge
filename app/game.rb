require_relative 'player'
require_relative 'weapon'
require_relative 'images'

RULES = { rock: :scissors, paper: :rock, scissors: :paper }

class Game
  attr_reader :player_1, :player_2
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def play_1(weapon_name)
    @player_1.play(weapon_name)
  end

  def play_2(weapon_name)
    @player_2.play(weapon_name)
  end

  def weapons
    (@player_1.weapon.type.to_s + @player_2.weapon.type.to_s).to_sym
  end

  def results
    if @player_1.weapon.type == @player_2.weapon.type
      "Nul"
    else
      @player_1.weapon.beats?(@player_2.weapon.type) ? "Adam won" : "God won"
    end
  end
end
