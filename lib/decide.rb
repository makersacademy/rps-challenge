class Decide
  def initialize
    @beats = { "Rock" => "Paper", "Paper" => "Scissors", "Scissors" => "Rock" }
  end
  def make p1, p2
    return "Tie" if p1 == p2
    return "P1" if p1 == @beats[p2]
    return "P2"
  end
end
