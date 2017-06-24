class Game
  
  attr_reader :name
  
  
  def initialize(name)
    @name = name
  end
  
  def self.create_new_game
    @game = Game.new(name)
  end
  
  def self.game_instance
    @game
  end
  
end
