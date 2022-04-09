require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player, :computer

  def initialize(player = Player.new("Player"), computer = Computer.new)
    @player = player
    @computer = computer
  end

  def computer_move
    @computer.random_move
  end
  
end
