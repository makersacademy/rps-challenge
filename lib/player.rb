class Player 
  ::START_POINTS = 0

  attr_reader :name, :move
  attr_accessor :points

  def initialize(name = "Mike", points = START_POINTS)
    @name = name
    @points = points
  end

  def make_move(choice)
    @move = choice.downcase
  end
  
end
