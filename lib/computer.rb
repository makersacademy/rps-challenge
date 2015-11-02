class Computer
  attr_reader :name, :selection

  CHOICES = ['Rock','Paper','Scissors','Spock','Lizard']

  def initialize
    @name = 'Computer'
    @selection = nil
  end

  def comp_choice
    @selection = CHOICES.sample
  end

end