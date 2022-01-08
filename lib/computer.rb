class Computer

  CHOICES = [:rock, :paper, :scissors]

  def move
    CHOICES.sample.to_s.capitalize
  end
  
end