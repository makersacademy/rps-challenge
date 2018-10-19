class ResultsCalculator
  def initialize(weapon_1, weapon_2)
    @weapon_1 = weapon_1
    @weapon_2 = weapon_2
  end

  def weapons
    "#{@weapon_1}, #{@weapon_2}"
  end

  def winner
    return rock_result if @weapon_1 == "ROCK"
    return paper_result if @weapon_1 == "PAPER"
    scissors_result
  end

  private

  def rock_result
    return @weapon_1 if @weapon_2 == "SCISSORS"
    return @weapon_2 if @weapon_2 == "PAPER"
    "DRAW"
  end

  def paper_result
    return @weapon_1 if @weapon_2 == "ROCK"
    return @weapon_2 if @weapon_2 == "SCISSORS"
    "DRAW"
  end

  def scissors_result
    return @weapon_1 if @weapon_2 == "PAPER"
    return @weapon_2 if @weapon_2 == "ROCK"
    "DRAW"
  end
end
