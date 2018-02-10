class Computer

  attr_reader :choice, :winner

  def rand_choice
    @choice = ['Rock', 'Paper', 'Scissors'].sample
  end

  def choose_winner(players_choice, choice = @choice)
    if choice == 'Rock' && players_choice == 'Paper'
      @winner = 'player'
    elsif choice == 'Rock' && players_choice == 'Scissors'
      @winner = 'computer'
    elsif choice == 'Paper' && players_choice == 'Scissors'
      @winner = 'player'
    elsif choice == 'Paper' && players_choice == 'Rock'
      @winner = 'computer'
    elsif choice == 'Scissors' && players_choice == 'Rock'
      @winner = 'player'
    elsif choice == 'Scissors' && players_choice == 'Paper'
      @winner = 'computer'
    end
  end

end
