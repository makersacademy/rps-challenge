class Computer

  CHOICES = [:rock, :paper, :scissors].freeze

  def move
    CHOICES.sample.to_s.capitalize
  end
  
end
