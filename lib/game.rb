require_relative 'computer'

class Game
  MOVES = ["Rock", "Paper", "Scissors"]

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  attr_reader :name, :name2
  attr_accessor :move, :move2

  def initialize(name, name2 = "Computer")
    @name = name
    @name2 = name2
  end

  def comp_move
    MOVES.sample
  end

  def winner
    moves = MOVES
    moves.rotate!(moves.index(@move))
    p2 = moves.index(@move2)
    if p2 == 0
      return "Draw"
    elsif p2 == 1
      return "#{@name2} wins!"
    else
      return "#{@name} wins!"
    end
  end

end
