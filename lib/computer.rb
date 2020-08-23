class Computer

  attr_reader :name

  CHOICES = ['rock', 'paper', 'scissors']

  def initialize(name)
    @name = name
  end

  def computer_choice
    CHOICES.sample
  end

end
