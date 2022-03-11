class Game
  CHOICES = [:rock, :paper, :scissors]
  attr_reader :computer_choice
  
  def computer_choice
    CHOICES.sample
  end
end