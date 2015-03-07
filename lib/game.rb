class Game

  attr_accessor :result

  def result(p1, p2)
    winning_moves = {"Rock" => "Paper", "Paper" => "Scissors", "Scissors" => "Rock"}
    ([p1, p2] & winning_moves.values_at(p1, p2)).first
  end




end