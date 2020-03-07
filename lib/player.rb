class Player
  attr_reader :name, :points, :hand
  def initialize(name)
    @name = name
    @points = 0
    @hand = ""
  end
end
