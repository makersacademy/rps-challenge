require_relative './rps'

class RockPaperScissorsLizardSpock < RockPaperScissors
  def initialize(name)
    @winners = {
      'Rock' => ['Scissors', 'Lizard'],
      'Paper' => ['Rock', 'Spock'],
      'Scissors' => ['Paper', 'Lizard'],
      'Lizard' => ['Spock', 'Paper'],
      'Spock' => ['Rock', 'Scissors']
    }
    super(name)
  end
end
