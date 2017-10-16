module RPSLSRules
  def self.rules
    {
        rock: ['scissors', 'lizzard'],
        paper: ['rock', 'spock'],
        scissors: ['paper', 'lizard'],
        lizzard: ['paper', 'spock'],
        spock: ['rock', 'scissors']
    }
  end
end
