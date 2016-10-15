require_relative 'player'
class Game

attr_reader :player

  class << self; attr_accessor :game end

  def self.start(name)
    @game = Game.new(Player.new(name))
  end

  def initialize(name)
    @player = name
  end

  def player_name
    @player.name
  end

  def make_player_choice(pick)
    @player.make_choice(pick)
  end

  def player_choice
    @player.choice
  end
end
