class Computer

  attr_reader :choice


CHOICES = [:rock, :paper, :scissors]

  def choice
    CHOICES.sample
  end



end
