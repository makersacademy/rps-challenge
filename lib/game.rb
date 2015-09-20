class Game

  attr_reader :options, :player1, :player2, :score1, :score2

  def initialize
    @options = ['rock', 'paper', 'scissors']
    @result = {rock: 'scissors', scissors: 'paper', paper: 'rock'}
    @player1 = nil
    @player2 = nil
  end

  def add_player(player)
    (@player1 ? @player2 = player : @player1 = player) if !two_players?
  end

  def winner
    return "No winner!" if (player1.choice == player2.choice)
    (@result[player1.choice.to_sym] == player2.choice) ? player1.win : player2.win
  end

  def score
    "#{player1.score} : #{player2.score}"
  end

  private

  def two_players?
    player1 && player2
  end

end