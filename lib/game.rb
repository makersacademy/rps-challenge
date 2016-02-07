require_relative 'bot'
require_relative 'player'

class Game
  WEAPONS = [:rock, :paper, :scissors, :nikesh, :sunfish]

  attr_reader  :multiplayer
  alias_method :multiplayer?, :multiplayer

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
    message = 'Please specify a valid player number'
    raise message if !number.is_a?(Numeric)
    raise message if (number > players.size || number <= 0 )
    players[number - 1]
  end

  private
  attr_reader :players
end
