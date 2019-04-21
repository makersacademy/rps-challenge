


class Game

  attr_reader :player_move, :computer_move

def initialize(player_move, computer_move)
  @player_move = player_move
  @computer_move = computer_move
end

def result
  if @player_move == @computer_move
    "It's a tie!"
  elsif @player_move == "Rock" && @computer_move == 'Paper'
    "Paper beats Rock...you lose!"
  elsif @player_move == "Rock" && @computer_move == 'Scissors'
    "Rock beats Scissors...you win!"
  elsif @player_move == "Scissors" && @computer_move == 'Paper'
    "Scissors beat Paper...you win!"
  elsif @player_move == "Scissors" && @computer_move == 'Rock'
    "Rock beats Scissors...you lose!"
  elsif @player_move == "Paper" && @computer_move == 'Rock'
    "Paper beats Rock...you win!"
  elsif @player_move == "Paper" && @computer_move == 'Scissors'
    "Scissors beat Paper...you lose!"
end

end
end
