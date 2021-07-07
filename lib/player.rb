class Player
  attr_reader :name, :move

  def initialize(name, move = move_sample)
    @name = name
    @move = move
  end

  def move_sample
    ["Rock", "Paper", "Scissors"].sample
  end
  
end
