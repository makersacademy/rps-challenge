class Computer

  attr_reader :name, :score

  DEFAULT_SCORE = 0

  def initialize
    @name = ['Donnie finga-slinga', 'Smoking Frog', 'Edward Scissorhands', 'Paper boy'].sample
    @score = DEFAULT_SCORE
  end

  def win
    @score += 1
  end

end
