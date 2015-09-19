class RockPaperScissors
  include Comparable
  def <=>(other_rps)
    if self.rock > other_rps.paper
      -1
    elsif self.rock < other_rps.paper
      1
    else
      0
    end
  end
end
