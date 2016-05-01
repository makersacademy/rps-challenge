require_relative 'player'
require_relative 'computer'

class Game


attr_reader :player, :computer

def initialize(name, computer = Computer.new)
  @player = Player.new(name)
  @computer = computer
  end


  def name
    @player.name
  end


end