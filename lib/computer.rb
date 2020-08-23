class Computer

  attr_reader :computer_choice, :name

CHOICES = ['rock', 'paper', 'scissors']

  def initialize(name)
    @name = name
  end

  def computer_choice
    CHOICES.sample
  end

end
