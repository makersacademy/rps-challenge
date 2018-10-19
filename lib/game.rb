class Game
  attr_reader :game_type

  def initialize(game_type)
    @game_type = game_type
  end

  def self.create(game_type)
    @game = Game.new(game_type)
  end
  
  def self.instance
    @game
  end

end
