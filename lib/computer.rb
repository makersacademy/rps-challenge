class Computer
  CHOICES = [:rock, :paper, :scissors]

  def turn
    CHOICES.sample
  end
end
