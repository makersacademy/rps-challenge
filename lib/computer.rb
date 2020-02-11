class Computer 

  attr_reader :move, :name, :icon
  def initialize
    @name = "Computer"
    @move = ["Rock", "Paper", "Scissors"].sample
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
