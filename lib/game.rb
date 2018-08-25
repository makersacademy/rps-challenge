class Game
  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  attr_reader :name

  def initialize(name)
    @name = name
  end
end
