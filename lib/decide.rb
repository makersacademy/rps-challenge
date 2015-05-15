class Decide
  def initialize
    @beats = { "Rock" => %w(Paper Spock), "Paper" => %w(Scissors Lizard), "Scissors" => %w(Rock Spock), "Lizard" => %w(Scissors Rock), "Spock" => %w(Paper Lizard) }
  end

  def make p1, p2
    return "tie" if p1 == p2
    return "win" if @beats[p2].include?(p1)
    "lose"
  end
end
