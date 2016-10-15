require_relative 'player'

class Game

  @@game = nil

  def self.start_game(player)
    @@game = Game.new(player)
  end

  def self.current_game
    @@game
  end

  attr_reader :player, :choice

  def initialize(player)
    @player = player
    @choice = nil
  end

end
