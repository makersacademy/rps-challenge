class Game
  attr_reader :choices, :mine
  def initialize
    @choices = ['ROCK','SCISSORS','PAPER']
  end
  def play
    @choices.sample
  end 
end
