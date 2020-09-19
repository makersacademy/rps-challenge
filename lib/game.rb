class Game

  attr_reader :p1, :p2

  def initialize(p1, p2 = "AI")
    @p1 = p1
    @p2 = p2
  end

  def self.create(p1, p2)
    @game = Game.new(p1, p2)
  end

  def self.instance
    @game
  end

end