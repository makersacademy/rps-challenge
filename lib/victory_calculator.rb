class VictoryCalculator

  WIN = [
    [:rock, :scissors],
    [:paper, :rock],
    [:scissors, :paper]
  ]

  DRAW = [
    [:rock, :rock],
    [:paper, :paper],
    [:scissors, :scissors]
  ]

  def win?(array)
    WIN.include?(array)
  end

  def draw?(array)
    DRAW.include?(array)
  end

end
