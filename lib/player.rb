class Player
  attr_reader :name
  attr_accessor :move, :points
  
  POINTS_DEFAULT = 0
  
  def initialize(name, move = "", points = POINTS_DEFAULT)
    @name = name
    @points = points
    @move = move
  end

  def computer?
    false
  end

  def pointswon
    @points += 1
  end
  
end
