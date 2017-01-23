class Player

  attr_reader :name, :choice

  CHOICES = [:Rock, :Paper, :Scissors]

  def initialize(name = "Computer", choice = CHOICES.sample)
  	@name = name
  	@choice = choice
  end

end