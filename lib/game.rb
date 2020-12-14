require_relative 'player'
require_relative 'sampler'

class Game
  attr_reader :player, :comp_move

  def initialize(player, sampler = Sampler.new)
    @player = player
    @sampler = sampler
    @comp_move = 0
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def randomiser
    @comp_move = @sampler.generate
  end

end
