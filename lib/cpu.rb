class CPU

  DEFAULT_SCORE = 0	
  DEFAULT_CHOICE = 'ROCK'	  

  attr_reader :name, :score, :choice

  def initialize
    @name = ["El'chip dip", "Friday brother", 'Dwayne', 'Kook'].sample
    @score = DEFAULT_SCORE	   
    @choice = DEFAULT_CHOICE
  end

  def win
    @score += 1
  end

  def choose
    @choice = ['ROCK', 'PAPER', 'SCISSORS'].sample
  end

end
