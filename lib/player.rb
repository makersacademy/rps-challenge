class Player 

  attr_reader :name, :turn

  def initialize(name)
    @name = name
    @turn = nil 
  end
  
  def move(move)
    if move == "rock"
      @turn = move
    elsif move == "paper"
      @turn = move 
    elsif move == "scissors"
      @turn = move 
    else 
      puts "Move not recognised, try again."
    end
  end

end