require_relative 'computer'

class Rps
  attr_reader :move, :computer

  def initialize
    @move = move
    @computer = computer
  end

  def computer_move
    @computer = Computer.new.random_move
  end

  def players_move(move)
   @move = move
  end
end

rps = Rps.new
rps.players_move('paper')
rps.computer_move
p rps