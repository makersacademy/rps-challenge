require_relative 'handsigns'

class Game
  attr_reader :player_name
  include Handsigns

  def initialize(player)
    @player_name = player.name
  end

  def self.create(player)
    @game = self.new(player)
  end

  def self.instance
    @game
  end
end
