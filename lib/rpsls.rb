require_relative './rps'

class RockPaperScissorsLizardSpock < RockPaperScissors
  def initialize
    @name = 'Rock Paper Scissors Lizard Spock'
    @winners = {
      'Rock' => ['Scissors', 'Lizard'],
      'Paper' => ['Rock', 'Spock'],
      'Scissors' => ['Paper', 'Lizard'],
      'Lizard' => ['Spock', 'Paper'],
      'Spock' => ['Rock', 'Scissors']
    }
    @moves = ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock']
  end
end
