class Game
  WEAPONS = [:rock, :paper, :scissors, :nikesh, :sunfish]

  attr_reader  :multiplayer
  alias_method :multiplayer?, :multiplayer

  def self.multi_player(player_1, player_2)
    new(player_1, player_2, true)
  end

  def initialize(player_1, player_2, multiplayer = false)
    @players     = [player_1, player_2]
    @multiplayer = multiplayer
  end

  
end
