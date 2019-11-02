class Randomizer
  def initialize
    @options = ['ROCK', 'PAPER', 'SCISSORS']
  end

  def move
    @options[rand(0..2)]
  end
end
