require_relative 'cpu'

class Game

  attr_reader :player, :cpu

  def initialize(player)
    @player = player
    @cpu = CPU.new
  end

end
