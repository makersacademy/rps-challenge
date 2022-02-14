
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
    num = rand(3)
    move = ''
    if num.zero?
      move = 'rock' 
    elsif num == 1
      move = 'paper' 
    else
      move = 'scissors' 
    end
    player.move = move
  end 
  
end  
