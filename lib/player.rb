class Player
  attr_accessor :choice

  def initialize(choice = nil)
    @choice = choice || ["Rock", "Scissors", "Paper"].sample 
    # explaination- if nothing is pased in, its random, 
    # if something is passed in, its that thing
  end 

end
