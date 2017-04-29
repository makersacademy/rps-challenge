class Computer

  CHOICES = 'Rock', 'Paper', 'Scissors'

  attr_reader :choice

  def initialize(choice = CHOICES.sample)
    @choice = choice
  end

end
