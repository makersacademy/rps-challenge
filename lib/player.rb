class Player

  def initialize
    @rps = ["Rock", "Scissors", "Paper"]
  end
  def scissors
    rps[1]
  end

  def rock
    rps[0]
  end

  def paper
    rps[2]
  end

  def random_rps
    rps.sample
  end

  def compare(a, b)
    return "Tie" if a == b
    if a == "Rock"
      return "Rock" if b == "Scissors"
      return "Paper" if b == "Paper"
    end
    if a == "Scissors"
      return "Rock" if b == "Rock"
      return "Scissors" if b == "Paper"
    end
    if a == "Paper"
      return "Paper" if b == "Rock"
      return "Scissors" if b == "Scissors"
    end
  end

  private
  attr_reader :rps
end
