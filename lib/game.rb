require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer, :computer_move

  def initialize(player)
    @player = player
    computer = Computer.new
    @computer_move = computer.computer_move
  end


end
