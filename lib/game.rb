class Game

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.create(name)
    @game = Game.new(name)
  end

  # def instance
  #   @game
  # end

  def hello
    "Hello"
  end

end
