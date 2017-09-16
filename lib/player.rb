

class Player

  attr_reader :name, :points

  def initialize(name,points)
    @name = name
    @points = points
  end

  def store(location)
    location.store(self)
  end


end
