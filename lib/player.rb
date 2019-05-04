class Player
  attr_accessor :choice
  attr_reader :name

  OPTIONS = ["Rock", "Scissors", "Paper"]
  
  def initialize(choice = nil, name = 'Computer')
    @choice = choice || ["Rock", "Scissors", "Paper"].sample 
    # explaination- if nothing is pased in, its random, 
    # if something is passed in, its that thing
    @name = name
  end 

  

end
