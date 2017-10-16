module RPSRules
  def self.rules
    {
        'rock': ['scissors'],
        'paper': ['rock'],
        'scissors': ['paper']
    }
  end
end