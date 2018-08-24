class Game

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  attr_reader :name

  def initialize(name)
    @name = name
  end

end
