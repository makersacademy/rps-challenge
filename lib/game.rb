require_relative 'cpu'
require_relative 'player'
require_relative 'weapon'

class Game

  attr_reader :player, :cpu

  def initialize(name)
    @player = Player.new(name)
    @cpu = CPU.new
  end

  def winner
    @player.win?(cpu)
  end

end
