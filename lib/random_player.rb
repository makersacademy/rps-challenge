module RandomPlayer
  MOVES = ['rock', 'paper', 'sissors', 'lizard', 'spock']

  def return_standard
    MOVES[rand(0..2)]
  end

  def return_extended
    MOVES.sample
  end

end
