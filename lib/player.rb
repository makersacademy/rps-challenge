class Player
  attr_accessor :name
  attr_accessor :move
    
  def initialize(name, move = 'rock')
    @name = name
    @move = move
  end  
  
  def set_move(player, move)
    player.move = move
    return player
  end  
      
end  
