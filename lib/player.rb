class Player 

  attr_reader :name, :move, :icon
  def initialize(name) 
    @name = name
    @icon
  end 
  
  def make_move(move)
    @move = move
  end 

  def icon(move)
    if move == "Rock"
      @icon = "👊"
    elsif move == "Scissors"
      @icon = "✂" 
    elsif move == "Paper"
      @icon =  "📜"
    end
  end
end 
