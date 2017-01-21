class Opponent

  attr_reader :name
  CHOICES = [:Rock, :Paper, :Scissors]

  def initialize(name = 'Computer')
  	@name = name
  end
  
  def choose  	
  	CHOICES.sample
  end 

end