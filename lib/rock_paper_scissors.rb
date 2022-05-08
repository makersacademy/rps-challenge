class RockPaperScissors
  attr_writer :rand_seed

  def initialize(guess:)
    @guess = guess.downcase
  end

  def randomization_alogrithm
    rand 234_234
  end

  def computer_guess
    srand (@rand_seed || randomization_alogrithm)
    computer_guesses = %w{rock paper scissors}
    computer_guesses.sample
  end

  def winner_is
    if rule_engine[computer_guess.to_sym].include? @guess
      'Robot wins'
    elsif rule_engine[@guess.to_sym].include? computer_guess
      'You win'
    else
      'Tie'
    end
  end

  def rule_engine
    {
      'rock': ['scissors'],
      'paper': ['rock'],
      'scissors': ['paper']
    }
  end
end
