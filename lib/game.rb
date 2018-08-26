require_relative 'computer'

class Game
  MOVES = ["Rock", "Paper", "Scissors"]
  MOVES_EXTENDED = ["Rock", "Paper", "Scissors", "Spock", "Lizard"]

  def self.create(mode, extended, name, name2 = "Computer")
    @game = Game.new(mode, extended, name, name2)
  end

  def self.instance
    @game
  end

  attr_reader :mode, :extended, :name, :name2
  attr_accessor :move, :move2, :active

  def initialize(mode, extended, name, name2 = "Computer")
    @mode = mode
    @extended = extended
    extended ? (@moves = MOVES_EXTENDED) : (@moves = MOVES)
    @name = name
    @name2 = name2
    @active = name
  end

  def comp_move
    @moves.sample
  end

  def switch_active
    @active == name ? (@active = name2) : (@active = name)
  end

  def winner
    @moves.rotate!(@moves.index(@move))
    p2 = @moves.index(@move2)
    if p2 == 0
      return "Draw"
    elsif p2 % 2 ==  1
      return "#{@name2} wins!"
    else
      return "#{@name} wins!"
    end
  end

end
