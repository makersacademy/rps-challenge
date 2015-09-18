class Player

  attr_reader :possible_moves, :move, :name

  def initialize
    @possible_moves = ["rock", "paper", "scissors"]
  end

  def name name
    @name = name
    "Hi #{name}"
  end

  def make_move move_name
    @move = move_name.downcase
    unless possible_moves.include? move
        return "Not a recognised move"
    end
    "You chose #{move}"
  end

end
