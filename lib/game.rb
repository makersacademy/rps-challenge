require_relative 'cpu'
require_relative 'player'

class Game

  attr_reader :player, :cpu

  def initialize(name)
    @player = Player.new(name)
    @cpu = CPU.new
  end

end
