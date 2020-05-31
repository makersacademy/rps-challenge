class Players

  attr_reader :name, :move

  def initialize(name)
    @name = name
    
  end

  def player_choose_move(player_move)
    @player_move = player_move
  end
end




