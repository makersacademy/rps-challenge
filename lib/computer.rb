class Computer < Player
  CHOICES = ['Rock', 'Paper', 'Scissors']
  attr_reader :choice

  def initialize
    @name = 'Computer'
  end

  def rand_choice
    @choice = CHOICES.sample
  end

end
