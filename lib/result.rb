class Result

def initialize(player_move, computer_move)
  @player_move = player_move
  @computer_move = computer_move
end

def judge
  if @player_move == @computer_move
    result = "draw"
    elsif @player_move == 'rock' && @computer_move == 'scissors'
      result = "player wins"
    elsif @player_move == 'rock' && @computer_move == 'paper'
      result = "computer wins"
    elsif @player_move == 'paper' && @computer_move == 'rock'
      result = "player wins"
    elsif @player_move == 'paper' && @computer_move == 'scissors'
      result = "computer wins"
    elsif @player_move == 'scissors' && @computer_move == 'paper'
      result = "player wins"
    elsif @player_move == 'scissors' && @computer_move == 'rock'
      result = "computer wins"
  end
end

end
