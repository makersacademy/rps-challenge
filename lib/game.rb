class Game

def initialize(player, computer)
  @player = player
  @computer = computer
end

def calculate_winner
  if @player == @computer
    "Computer chose #{@computer} – it's a draw!"
  end
end


end
