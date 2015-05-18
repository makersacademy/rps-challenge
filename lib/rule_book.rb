module RuleBook
  CHOICES = {
    standard: [:rock, :paper, :scissors]
  }

  def rules game_type
    CHOICES[game_type]
  end

  def rule_size game_type
  	CHOICES[game_type].length
  end
end