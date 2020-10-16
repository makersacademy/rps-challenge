class Game
attr_reader :result,

  def initialize(player1_turn, player2_turn)
    @player1_turn = player1_turn
    @player2_turn = player2_turn
  end

  def comp_selection
    if rand(4) == 1
      @player2_turn = "Scissors"
    elsif rand(4) == 2
      @player2_turn = "Rock"
    elsif rand(4) == 3
      @player2_turn = "Paper"
    end
  end

  def result
    if @player1_turn == "Rock" && @player2_turn == "Paper"
      "Player 2 wins"
    elsif @player1_turn == "Paper" && @player2_turn == "Scissors"
      "Player 2 wins"
    elsif @player1_turn == "Scissors" && @player2_turn == "Rock"
      "Player 2 wins"
    elsif @player2_turn == "Rock" && @player1_turn == "Paper"
      "Player 1 wins"
    elsif @player2_turn == "Paper" && @player1_turn == "Scissors"
      "Player 1 wins"
    elsif @player2_turn == "Scissors" && @player1_turn == "Rock"
      "Player 1 wins"
    else
      "Draw"
    end
  end
end
