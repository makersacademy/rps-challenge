require_relative 'player'
require_relative 'opponent'

class Game

  attr_reader :player, :opponent

  def self.generate(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game
  end

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end

end
