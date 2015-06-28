class Player

  def initialize
    @won = false
    @lost = false
  end

  def choose(choice)
    fail 'Pick Rock Paper or Scissors' unless correct_input?(choice)
    @choice = choice
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

  private
  def correct_input?(input)
    input == :Rock || input == :Paper || input == :Scissors
  end

end
