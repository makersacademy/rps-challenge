class Game
  attr_reader :choices
  def initialize
    @choices = ['Rock','Paper','Scissors']
  end
  def play
    @mine = @choices.sample
  end
end
