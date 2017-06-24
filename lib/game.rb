# lib/game.rb
require_relative './player.rb'
require_relative './npc.rb'

class Game
  attr_reader :player, :npc

  def initialize(player)
    @player = player
    @npc = NPC.new
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end
end
