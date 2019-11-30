require_relative 'player'

class Game
  def generate_move
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
