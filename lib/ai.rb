class AI

  def initialize
    @won = false
    @lost = false
  end

  def choose
    [:Paper , :Rock , :Scissors].sample
  end

  def won?
    @won
  end

  def wins
    @won = true
  end

  def lost?
    @lost
  end

  def looses
    @lost = true
  end
end
