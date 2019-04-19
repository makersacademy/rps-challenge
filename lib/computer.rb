class Computer < Player
  CHOICES = ['Rock', 'Paper', 'Scissors']

  def initialize
    @name = 'Computer'
  end

  def choice
    rand_choice
  end

private
  def rand_choice
    CHOICES.sample
  end

end
