class Player
  attr_reader :name, :score, :choice

  def initialize(name)
    @name = name
    @choice = nil
    @score = 0
  end

  def record_win
    @score += 1
  end

  def record_choice(choice)
    @choice = choice
  end

end
