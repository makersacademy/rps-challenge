class Game
  attr_reader :player, :chosen_move
  
  def initialize(player = Player.new)
    @player = player
    @chosen_move = nil
  end

  def make_move(move)
    @chosen_move = move
  end

end
