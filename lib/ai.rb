class AI

  def initialize
    @won = false
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
end
