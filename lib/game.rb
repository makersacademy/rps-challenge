class Game

  def moves
    @moves = { 1 => "rock", 2 => "paper", 3 => "scissors", 4 => "lizard", 5 => "spock" }
  end

  def random_move
    number = 1 + rand(5)
    moves[number]
  end

end