class Game
  attr_reader :player
  def initialize(p1)
    @player = p1
  end
  def cp_move
  ['Rock', 'Paper', 'Scissors'].sample
  end
end
