require_relative './player.rb'
require_relative './computer.rb'

class Game

attr_accessor :player, :computer

  def initialize(player_name, player = Player, computer = Computer)
    @player = player.new(player_name)
    @computer = computer.new
  end


end
