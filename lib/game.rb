class Game

  attr_reader :options, :score1, :score2

  def initialize
    @options = ['rock', 'paper', 'scissors']
    @result = {rock: 'scissors', scissors: 'paper', paper: 'rock'}
  end

  def winner(player1, player2)
    return "No winner!" if (player1.choice == player2.choice)
    (@result[player1.choice.to_sym] == player2.choice) ? player1.win : player2.win
  end

  def score(player1, player2)
    "#{player1.score} : #{player2.score}"
  end

end