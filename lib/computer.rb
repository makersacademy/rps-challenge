class Computer

  CHOICES = ['rock', 'paper', 'scissors']

  attr_reader :name, :choice

  def initialize
    @name = "Computer"
  end

  def random_choice
    @choice = CHOICES.sample
  end

end
