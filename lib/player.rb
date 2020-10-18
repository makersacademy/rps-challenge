class Player
  attr_reader :name

  def initialize(name)
    @name = name 
  end

  def player_move(picked_move)
    @picked_move = picked_move
  end
end
