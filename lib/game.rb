class Game

  attr_reader :player_move, :computer_move

  def initialize(player_move, computer_move)
    @player_move = player_move
    @computer_move = computer_move
  end

  def result
    if @player_move == "Rock" && @computer_move == "Scissors"
      return "You win! :)"
    elsif @player_move == "Paper" && @computer_move == "Rock"
      return "You win! :)"
    elsif @player_move == "Scissors" && @computer_move == "Paper"
      return "You win! :)"
    elsif @player_move == @computer_move
      return "Draw"
    else
      return "Computer Wins :("
    end
  end

end
