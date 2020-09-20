require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player, :cpu

  WEAPONS = [:rock, :paper, :scissors]

    def initialize(player = Player.new, cpu = Computer.new)
      @player = player
      @cpu = cpu
    end

    

end