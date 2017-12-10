class Player
  attr_reader :name, :score, :choice

  def initialize(name)
    @name = name
    @choice = nil
    @score = 0
    @winner = false
  end

  def record_win
    @score += 1
  end

  def record_choice(choice)
    @choice = choice
  end

  def winner?
    @score > 9
  end

end
