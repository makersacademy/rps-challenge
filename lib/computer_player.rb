require_relative 'player'

class ComputerPlayer < Player 

  attr_reader :name, :move, :wins

  def initialize(name = "Computer")
    super
  end

  def current_move
    selection = ["Rock", "Paper", "Scissors"]
    @move = selection[rand(0..2)]
  end

  def won
    @wins += 1
  end

  def computer?
    true
  end
end