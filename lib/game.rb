class Game
  attr_reader :winner, :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @winner = nil
    @player_one_wins = [
      "rock-paper",
      "paper-rock",
      "scissors-paper"
    ]
  end

  def find_winner
    return @winner = "Draw" if player1.choice == player2.choice
    if player_one_wins.include?("#{player1.choice}-#{player2.choice}")
      @winner = player1.name
    else
      @winner = player2.name
    end
  end

  private

  attr_reader :player_one_wins
end
