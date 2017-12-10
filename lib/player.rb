class Player

  DEFAULT_SCORE = 0
  DEFAULT_CHOICE = 'ROCK'

  attr_accessor :name, :score, :choice

  def initialize(name)
    @name = name
    @score = DEFAULT_SCORE
    @choice = DEFAULT_CHOICE
  end

  def win
    @score += 1
  end

end
