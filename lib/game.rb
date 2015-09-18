class Game

  def initialize(player_move, computer_move)
    @player_move = player_move
    @computer_move = computer_move
    @game_status
  end

  def tells_status
    if @player_move == @computer_move
      @result = "You have tied against the computer"
    elsif @player_move == "Rock" && @computer_move == "Scissors"
      @result = "Congratulations, you have won against the computer!"
    elsif @player_move == "Paper" && @computer_move == "Rock"
      @result = "Congratulations, you have won against the computer!"
    elsif @player_move = "Scissors" && @computer_move == "Paper"
      @result = "Congratulations, you have won against the computer!"
    else
      @result = "Sorry, the computer has won."
    end
  end
end
