class Game
  MOVES = { "rock" => "scissors", "paper" => "rock", "scissors" => "paper" }

  def self.result_of(move, opponent_move)
    return 'draw' if move == opponent_move
    return 'win' if MOVES[move] == opponent_move
    'lose'
  end

  def self.computer_move
    MOVES.values.to_a.sample
  end
end