class Game
  def initialize(player1)
    @players = [player1, 'computer']
  end

  def players
    @players
  end
  
  def generate_move
    ['ROCK', 'PAPER', 'SCISSORS'].sample
  end
end