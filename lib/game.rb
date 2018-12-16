
class Game

attr_reader :player, :computer

def initialize(player, computer)
@player = player
@computer = computer
end

def compare
  if @player == "Rock" && @computer == "Scissors"
    win
  elsif @player == "Paper" && @computer == "Rock"
    win
  elsif @player == "Scissors" && @computer == "Paper"
    win
  elsif @player == @computer
    draw
  else
    lose
  end
end

def win
  "You won!"
end

def draw
  "It's a draw!"
end

def lose 
  "You lost!"
end

end