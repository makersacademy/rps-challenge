class Computer
  attr_reader :name, :rounds_won, :selection

  CHOICES = ['Rock','Paper','Scissors']

  def initialize
    @name = 'Computer'
    @rounds_won = []
    @selection = nil
  end

  def comp_choice
    @selection = CHOICES.sample
  end

end