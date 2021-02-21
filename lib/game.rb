class Game
  @@game = nil
  attr_reader :players

  def initialize(names)
    @players = names
  end

  def self.store(game)
    @@game = game
  end

  def self.create (names)
    @@game = Game.new(names)
  end

  def self.instance
    @@game
  end

  def players
    @players
  end

end