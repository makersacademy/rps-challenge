class Game

  attr_reader :move1, :move2, :moves
  
  def initialize(move1, move2)
    @move1 = move1
    @move2 = move2

    build_moves
  end

  def build_moves
    @moves = {
      ["Rock", "Paper"] => "Paper",
      ["Paper", "Rock"] => "Paper",
      ["Rock", "Scissors"] => "Rock",
      ["Scissors", "Rock"] => "Rock",
      ["Scissors", "Paper"] => "Scissors",
      ["Paper", "Scissors"] => "Scissors"
    }
  end

  def the_winning_move

    @try_move = [@move1, @move2]
    
    @moves[@try_move]

  end

end
