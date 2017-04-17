class PlayerAuto

  attr_reader :name, :score

  def initialize
    @name = "Computer"
    @score = 0
  end

  def add_to_score
    @score += 1
  end

  def random_choice(choices)
    @choice = choices.sample
  end

  def automated?
    true
  end

end
