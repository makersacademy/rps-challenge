class Computer

  CHOICES = ['Rock', 'Paper', 'Scissors']

  attr_reader :name, :choice

  def initialize(name)
    @name = "Computer"
    @choice
  end

  def choice
    CHOICES.sample
  end

end
