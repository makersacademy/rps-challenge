
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
   
  def auto_move(player)
    num = rand(2)
    move = ''
    if num.zero?
      move = 'rock' 
    end
    if num == 1
      move = 'paper' 
    end
    if num == 2
      move = 'scissors' 
    end
    player.move = move
    return player
  end 
  
end  
