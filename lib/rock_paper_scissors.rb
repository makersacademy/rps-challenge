class RockPaperScissors         

  def initialize(guess:)
    @guess = guess.to_sym
    @computer_guess = computer_guess.to_sym
  end

  def computer_guess
    computer_guesses = %w{rock paper scissors lizard spock}
    computer_guesses.sample
  end

  def winner_is
    case 
    when @guess == @computer_guess
      'Tie'
    when @guess == :rock && @computer_guess == :scissors ||
        @guess == :rock && @computer_guess == :lizard ||
        @guess == :paper && @computer_guess == :rock ||
        @guess == :paper && @computer_guess == :spock ||
        @guess == :scissors && @computer_guess == :paper ||
        @guess == :scissors && @computer_guess == :lizard ||
        @guess == :lizard && @computer_guess == :paper ||
        @guess == :lizard && @computer_guess == :spock ||
        @guess == :spock && @computer_guess == :scissors ||
        @guess == :spock && @computer_guess == :rock
      'You win'
    when @computer_guess == :rock && @guess == :scissors ||
        @computer_guess == :rock && @guess == :lizard ||
        @computer_guess == :paper && @guess == :rock ||
        @computer_guess == :paper && @guess == :spock ||
        @computer_guess == :scissors && @guess == :paper ||
        @computer_guess == :scissors && @guess == :lizard ||
        @computer_guess == :lizard && @guess == :paper ||
        @computer_guess == :lizard && @guess == :spock ||
        @computer_guess == :spock && @guess == :scissors ||
        @computer_guess == :spock && @guess == :rock
      'Robot wins'
    end
  end

  def view_computer
    @computer_guess
  end

  def view_player
    @guess
  end
end
