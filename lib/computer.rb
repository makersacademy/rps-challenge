class Computer

  CHOICES = ['rock', 'paper', 'scissors']

  attr_reader :name

  def initialize
    @name = "Computer"
  end

  def choice
    @choice = CHOICES.sample
  end

end
