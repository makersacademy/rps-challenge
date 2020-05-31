class Game
  attr_reader :player_turn, :computer_turn, :player_name
  WINNERS = [["Scissors", "Paper"], ["Paper", "Rock"], ["Rock", "Scissors"]]
  LOSERS = [["Paper", "Scissors"], ["Rock", "Paper"], ["Scissors", "Rock"]]

  def initialize(player_name, player_turn, computer_turn)
    @player_name = player_name
    @player_turn = player_turn
    @computer_turn = computer_turn
  end

  def round
    [@player_turn, @computer_turn]
  end

  def check_winner(round)
    if WINNERS.include?(round)
      @player_name
    elsif LOSERS.include?(round)
      "Computer"
    else
      "Tied"
    end
  end

  def winner_is
    check_winner(round)
  end

end