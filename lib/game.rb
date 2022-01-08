class Game
  attr_reader :player

  def initialize(player)
    @moves = ['Rock', 'Paper', 'Scissors']
    @player = player
  end

  def computer_move
    @moves.sample
  end
end
