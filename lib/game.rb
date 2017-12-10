require_relative 'player'

class Game
  def self.create_new args
    @@game = Game.new args
  end

  def self.instance
    @@game
  end

  attr_reader :player_1, :player_2, :multiplayer

  def initialize args
    @player_1 = args[:player_1]
    @player_2 = args[:player_2] || Player.new("AI")
    @multiplayer = !!args[:player_1] && !!args[:player_2]
  end
end
