class Rules

  def initialize
    @wins_over = {
      "Rock" => "Paper",
      "Paper" => "Scissors",
      "Scissors" => "Rock"
    }
  end
  
  def decide_winner(a, b)
    if a == b
      "Draw"
    elsif a == @wins_over[b]
      "#{a}"
    else
      "#{b}"
    end
  end

end
