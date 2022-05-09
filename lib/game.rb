class Game

  def initialize(move = rand(3))
    @comp_move = move
  end

  def rock
    if @comp_move.zero?
      "It's a draw! You picked rock and so did the computer."
    elsif @comp_move == 1
      "Sorry, you lose! You picked rock and the computer picked paper."
    else
      "Congratulations, you won! You picked rock and the computer picked scissors."
    end
  end

  def paper
    if @comp_move == 1
      "It's a draw! You picked paper and so did the computer."
    elsif @comp_move == 2
      "Sorry, you lose! You picked paper and the computer picked scissors."
    else
      "Congratulations, you won! You picked paper and the computer picked rock."
    end
  end

  def scissors
    if @comp_move == 2
      "It's a draw! You picked scissors and so did the computer."
    elsif @comp_move == 1
      "Congratulations, you won! You picked scissors and the computer picked paper."
    else
      "Sorry, you lose! You picked scissors and the computer picked rock."
    end
  end
end
