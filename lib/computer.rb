class Computer

  CHOICES = 'Rock', 'Paper', 'Scissors'

  attr_reader :choice

  def initialize(computer_choice = CHOICES.sample)
    @choice = computer_choice
  end
end
