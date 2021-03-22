require_relative 'player'

class Move
  attr_reader :player_move, :computer_move, :win_lose

def player_move
#player move
  if $rock == "ROCK"
    @player_move = "Rock"
  elsif $paper == "PAPER"
    @player_move = "Paper"
  else
    @player_move = "Scissors"
  end
end

def computer_move
#computer random move (sample array)
  array = ["Rock", "Paper", "Scissors"]
  @computer_move = array.sample
end

def win_lose
  if @player_move == "Rock" && @computer_move == "Paper"
    @win_lose = "Computer wins!"
  elsif @player_move == "Paper" && @computer_move == "Rock"
    @win_lose = "You win!"
  elsif @player_move == "Paper" && @computer_move == "Scissors"
    @win_lose = "Computer wins!"
  elsif @player_move == "Scissors" && @computer_move == "Paper"
    @win_lose = "You win!"
  elsif @player_move == "Rock" && @computer_move == "Scissors"
    @win_lose = "You win!"
  elsif @player_move == "Scissors" && @computer_move == "Rock"
    @win_lose = "Computer wins!"
  elsif @player_move == "Paper" && @computer_move == "Paper"
    @win_lose = "Draw!"
  elsif @player_move == "Rock" && @computer_move == "Rock"
    @win_lose = "Draw!"
  elsif @player_move == "Scissors" && @computer_move == "Scissors"
    @win_lose = "Draw!"
  else
    @win_lose = "You win!"
  end
end

end
