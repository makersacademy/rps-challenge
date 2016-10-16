class Computer

  CHOICES = [:rock, :paper, :scissors]

  def computer_selection
    @comp_choice = CHOICES.sample
  end

end
