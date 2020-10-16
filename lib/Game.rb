class Game
attr_reader :result

  def initialize(player1_turn, player2_turn)
    @player1_turn = player1_turn
    @player2_turn = player2_turn
  end

  def result
    if @player1_turn == "Rock" && @player2_turn == "Paper"
      "Player 2 wins"
    elsif @player1_turn == "Paper" && @player2_turn == "Scissors"
      "Player 2 wins"
    end
  end


end
