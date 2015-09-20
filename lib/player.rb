class Player

  def initialize
    @rps = [:rock, :scissors, :paper]
  end

  def rock
    rps[0]
  end

  def scissors
    rps[1]
  end

  def paper
    rps[2]
  end

  def random_rps
    rps.sample
  end

  def compare(a, b)
    return "Tie" if a == b
    if a == :rock
      return "You win" if b == :scissors
      return "You lose" if b == :paper
    end
    if a == :scissors
      return "You lose" if b == :rock
      return "You win" if b == :paper
    end
    if a == :paper
      return "You win" if b == :rock
      return "You lose" if b == :scissors
    end
  end

  private
  attr_reader :rps
end
