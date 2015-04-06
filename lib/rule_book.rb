module RuleBook
  CHOICES = {
    standard: [:rock, :paper, :scissors]
  }

  def rules game_type
    CHOICES[game_type]
  end
end