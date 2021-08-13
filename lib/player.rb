class Player
  attr_reader :name, :choice
  
  def initialize(name = "Player 1")
    @name = name
    @choice
  end

  def choose(move)
    @choice = move
  end
end
