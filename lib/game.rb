class Game 
  attr_reader :player_name

  def self.instance
    @game
  end

  def self.create(name)
    @game = Game.new(name)
  end
  
  def initialize(name)
    @player_name = name
  end
end
