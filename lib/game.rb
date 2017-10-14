class Game

  attr_reader :p1, :p2

  def initialize(p1 = Player.new, p2 = Player.new)
    @p1 = p1
    @p2 = p2
  end

end
