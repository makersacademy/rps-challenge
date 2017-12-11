class Player

  DEFAULT_SCORE = 0
  DEFAULT_CHOICE = 'ROCK'

  attr_accessor :name, :score, :choice

  def initialize(name)
    @name, @score, @choice = name, DEFAULT_SCORE, DEFAULT_CHOICE
  end

  def win
    @score += 1
  end

end
