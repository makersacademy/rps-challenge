class Game

  attr_reader :moves, :player_move, :computer_pick

  def initialize(player_move)
    @player_move = player_move
    @moves = ["Rock", "Paper", "Scissors"]
    @computer_pick = [].join
    @result = []
  end

  def computer_turn
    computer_pick = moves.sample
    @computer_pick << computer_pick
  end

  def play_game
    if (player_move == "Rock" && @computer_pick == "Scissors") || (player_move == "Paper" && @computer_pick == "Rock") || (player_move == "Scissors" && computer_pick == "Paper")
      @result << "You Win!"
    elsif player_move == @computer_pick
      @result << "Draw!"
    else
      @result << "You Lose!"
    end
  end

  def display_winner
    @result.join
    
  end

end