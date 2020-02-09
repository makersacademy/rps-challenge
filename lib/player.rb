class Player 

  attr_reader :name, :move, :icon
  def initialize(name, move) 
    @name = name
    @move = move
    @icon
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
