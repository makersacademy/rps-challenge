class Game
  attr_reader :result, :comp_selection, :player2_name

  def initialize(player1_turn, player2_turn, player1_name, player2_name = "Computer")
    @player1_turn = player1_turn
    @player2_turn = player2_turn
    @player1_name = player1_name
    @player2_name = player2_name
  end

  def result
    if @player1_turn == "Rock" && @player2_turn == "Paper"
      "#{@player2_name} wins"
    elsif @player1_turn == "Paper" && @player2_turn == "Scissors"
      "#{@player2_name} wins"
    elsif @player1_turn == "Scissors" && @player2_turn == "Rock"
      "#{@player2_name} wins"
    elsif @player2_turn == "Rock" && @player1_turn == "Paper"
      "#{@player1_name} wins"
    elsif @player2_turn == "Paper" && @player1_turn == "Scissors"
      "#{@player1_name} wins"
    elsif @player2_turn == "Scissors" && @player1_turn == "Rock"
      "#{@player1_name} wins"
    elsif @player1_turn == @player2_turn
      "It is a Draw!"
    end
  end
end
