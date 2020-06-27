
class Game

  attr_reader :name, :result

  def initialize(name)
    @name = name
  end

  def go(player_pick)
    calculate_winner(player_pick, computer_pick)
  end

  def computer_pick
    %w[scissors rock paper][rand(3)]
  end

  def calculate_winner(player1_pick, player2_pick)
    @result = case [player1_pick, player2_pick]  
    when ['rock', 'rock'], ['paper', 'paper'], ['scissors', 'scissors']
      player1_pick + " vs " + player2_pick + ' The result is a draw'
    when ['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']
      player1_pick + " vs " + player2_pick + ' You win'
    when ['paper', 'scissors'], ['scissors', 'rock'], ['rock', 'paper']
      player1_pick + " vs " + player2_pick + ' You lost'
    end
  end
  
end
