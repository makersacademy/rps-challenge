require_relative 'game'

class Computer

  CHOICES = [:rock, :paper, :scissors]

  def select_choice
    @choice = CHOICES.sample
  end

end
