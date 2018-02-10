class Game

  attr_reader :winner

  def choose_winner(players_choice, computers_choice)
    if computers_choice == 'Rock'
      players_choice == 'Paper' ? @winner = 'player' : @winner = 'computer'
    elsif computers_choice == 'Paper'
      players_choice == 'Scissors' ?  @winner = 'player' : @winner = 'computer'
    elsif computers_choice == 'Scissors'
      players_choice == 'Rock' ? @winner = 'player' : @winner = 'computer'
    end
  end
end
