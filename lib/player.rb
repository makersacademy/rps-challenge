class Player
attr_reader :name
attr_accessor :points, :move

def initialize(name)
  @name = name
  @points = 0
  @move =''
end

def add_points
  @points += 1
end

end
