class Game
  attr_accessor :winners
  def winners(player1, player2)
    winning_moves =
    { "Rock" => "Paper", "Paper" => "Scissors", "Scissors" => "Rock" }
    ([player1, player2] & winning_moves.values_at(player1, player2)).first
  end
end
