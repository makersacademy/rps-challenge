class Opponent

  CHOICES = [:rock, :paper, :scissors]

  def choice
    CHOICES.sample
  end

end
