require_relative 'player'
require_relative 'computer'
class Game
  attr_accessor :player, :computer
  def initialize(player)
    @player = player
    @computer = Computer.new
  end
end