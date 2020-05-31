class RPSGame

  def play_game(choice)
    @choice = choice.downcase
    @computer_choice = random_choice
    ascertain_winner(choice, @computer_choice)
  end

  def random_choice
    ['Rock', 'Paper', 'Scissors'].sample
  end

  private

  def ascertain_winner(choice, computer_choice)
    if choice == computer_choice
      message(:draw)
    elsif choice == 'Rock' && computer_choice == 'Scissors'
      message(:win)
    elsif choice == 'Paper' && computer_choice == 'Rock'
      message(:win)
    elsif choice == 'Scissors' && computer_choice == 'Paper'
      message(:win)
    else
      message(:loss)
    end
  end

  def message(outcome)
    message = "Computer chose #{@computer_choice.downcase}. You chose #{@choice}."
    if outcome == :win
      "#{message} You win, "
    elsif outcome == :loss
      "#{message} You lose, "
    elsif outcome == :draw
      "#{message} You drew, "
    end
  end
end
