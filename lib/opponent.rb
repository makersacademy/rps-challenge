class Opponent

  CHOICES = [:rock, :paper, :scissors]

  def choice
    display(CHOICES.sample)
  end

  private

  def display(other_than_string)
    other_than_string.to_s.capitalize
  end

end
