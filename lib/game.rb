class Game

  def initialize(name)
    @player_name = name
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def player_name
    @player_name
  end

end
