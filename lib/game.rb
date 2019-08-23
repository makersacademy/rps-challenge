class Game
  attr_reader :choices
  def initialize
    @choices = ['Rock','Paper','Scissors']
  end
  def play
    @choices.sample 
  end
end
