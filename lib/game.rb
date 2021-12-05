class Game
  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def players
    @players
  end
  
  def generate_move
    ['ROCK', 'PAPER', 'SCISSORS'].sample
  end
end
