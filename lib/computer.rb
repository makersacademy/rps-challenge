class Computer

  attr_reader :name, :score, :choice

  DEFAULT_SCORE = 0
  DEFAULT_CHOICE = 'ROCK'

  def initialize
    @name = ['Donnie finga-slinga', 'Smoking Frog', 'Edward Scissorhands', 'Paper boy'].sample
    @score, @choice = DEFAULT_SCORE, DEFAULT_CHOICE
  end

  def win
    @score += 1
  end

  def choose
    @choice = ['ROCK', 'PAPER', 'SCISSORS'].sample
    # @choice = 'SCISSORS' if @name == 'Edward Scissorhands'
  end

end
