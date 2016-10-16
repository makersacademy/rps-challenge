class Opponent
  CHOICES = [:rock, :paper, :scissors, :lizard, :spock]
  
  def choice
    CHOICES.sample
  end
end