class Player
  attr_reader :name, :player_move

  def initialize(name)
    @name = name
  end

  def make_move(player_move)
    @player_move = player_move 
  end
end 
