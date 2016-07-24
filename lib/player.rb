class Player
  attr_reader :name
  attr_accessor :points
  def initialize(name)
    @name = name
    @points = 0
  end

end
