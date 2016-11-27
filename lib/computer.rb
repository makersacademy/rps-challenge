class Computer

  attr_reader :name

  def initialize(name)
    @name = "Computer"
  end

  def computer_choice
    CHOICES.sample
  end

  private
  CHOICES = ['Rock', 'Paper', 'Scissors']

end
