class Computer
  CHOICES = [:Rock, :Paper, :Scissors]

  def turn
    # p CHOICES.sample.to_s
    CHOICES.sample.to_s
  end
end
