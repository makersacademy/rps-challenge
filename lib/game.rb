require_relative 'challenger'
require_relative 'computer'

class Game

  attr_reader :challenger, :computer

  def initialize(challenger, computer)
    @challenger = challenger
    @computer = computer
  end

  def challenger_name
    @challenger.name
  end

  def challenger_move
    @challenger.move
  end

  def computer_name
    @computer.name
  end

  def computer_move
    @computer.choice
  end

end
