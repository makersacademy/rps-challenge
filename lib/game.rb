require_relative 'challenger'
require_relative 'computer'
require_relative 'move'

class Game

  attr_reader :challenger, :computer, :moves

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  def initialize(challenger, computer)
    @challenger = challenger
    @computer = computer
  end

  def winner(challenger_move, computer_move)
    @moves = Move.new(challenger_move, computer_move)
    return 'Draw!' if @moves.result == 'Draw!'
    return 'Challenger wins!' if @moves.result == true
    return 'Computer wins!' if @moves.result == false
  end

  def challenger_name
    @challenger.name
  end

  def challenger_move
    @challenger.choice
  end

  def computer_name
    @computer.name
  end

  def computer_move
    @computer.choice
  end

end
