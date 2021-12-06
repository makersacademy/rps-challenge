class Game 

  def initialize(player1_move, player2_move)
    @player1_move = player1_move
    @player2_move = player2_move
  end

  def result
    if @player1_move == 'Rock' && @player2_move == "Scissors" || @player1_move == 'Paper' && @player2_move == "Rock" || @player1_move == 'Scissors' && @player2_move == "Paper"
      :win
    elsif @player1_move == @player2_move
      :draw
    else
      :loss
    end
  end
end
