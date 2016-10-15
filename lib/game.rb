class Game

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  attr_reader :player1

  def initialize(name)
    @player1 = name
  end
end
