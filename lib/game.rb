class Game
  attr_reader :move, :computer_move
  MOVES = ["Rock", "Paper", "Scissors"]
  def initialize(move)
    @move = move
    @computer_move = MOVES.sample
  end
  def result(p1_move, computer_move)
    beats = { 'Rock' => 'Scissors', 'Paper' => 'Rock', 'Scissors' => 'Paper' }
    if p1_move == computer_move
      "DRAW!"
    elsif beats[p1_move] == computer_move
      "YOU WON!"
    else
      "COMPUTER WON!"
    end
  end
end
