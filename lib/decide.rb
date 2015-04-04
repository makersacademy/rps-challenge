class Decide
  def initialize
    @beats = { "Rock" => "Paper", "Paper" => "Scissors", "Scissors" => "Rock" }
  end
  def make p1, p2
    return "tie" if p1 == p2
    return "win" if p1 == @beats[p2]
    return "lose"
  end
end
