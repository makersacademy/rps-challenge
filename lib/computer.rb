class Computer
  CHOICES = [:rock, :paper, :scissors]

  def rand_choice
    CHOICES.sample
  end
end
