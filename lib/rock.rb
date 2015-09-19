class Rock
  include Comparable
  def <=>(other_rps)
    if self < other_rps
      -1
    end
  end
end
