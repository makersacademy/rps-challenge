class Game
  attr_reader :player_turn, :computer_turn, :player_name, :choices
  WINNERS = [["Scissors", "Paper"], ["Paper", "Rock"], ["Rock", "Scissors"]]
  LOSERS = [["Paper", "Scissors"], ["Rock", "Paper"], ["Scissors", "Rock"]]

  def initialize(player_name, player_turn, computer_turn)
    @player_name = player_name
    @player_turn = player_turn
    @computer_turn = computer_turn
  end

  def check_winner
    choices = [@player_turn, @computer_turn]
    if WINNERS.include?(choices)
      @player_name
    elsif LOSERS.include?(choices)
      "Computer"
    else
      "Tied"
    end
  end

end