require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def computer_move
    computer_move = computer.move
  end



end
