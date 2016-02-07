require_relative 'bot'
require_relative 'player'

class Game
  WEAPONS = [ :rock, :paper, :scissors, :nikesh, :sunfish]
  RULES   = { rock:     [:scissors, :sunfish],
              paper:    [:rock, :nikesh],
              scissors: [:paper, :sunfish],
              sunfish:  [:paper, :nikesh],
              nikesh:   [:rock, :scissors] }
  ARGUMENT_ERROR_MSG = 'Invalid player number'
  RUNTIME_ERROR_MSG  = 'Both players must have a weapon'

  attr_reader :multiplayer
  alias multiplayer? multiplayer

  def self.single_player(player_1_name)
    new(Player.new(player_1_name), Bot.new)
  end

  def self.multi_player(player_1_name, player_2_name)
    new(Player.new(player_1_name), Player.new(player_2_name), true)
  end

  def initialize(player_1, player_2, multiplayer = false)
    @players     = [player_1, player_2]
    @multiplayer = multiplayer
  end

  def player(number)
    raise ARGUMENT_ERROR_MSG unless number.is_a?(Numeric)
    raise ARGUMENT_ERROR_MSG if number > players.size || number <= 0
    players[number - 1]
  end

  def result
    weapon_1, weapon_2 = player(1).weapon, player(2).weapon
    raise RUNTIME_ERROR_MSG if weapon_1.nil? || weapon_2.nil?
    return :draw if weapon_1.type == weapon_2.type
    return weapon_1.beats?(weapon_2) ? :p1_win : :p2_win
  end

  private
  attr_reader :players
end
