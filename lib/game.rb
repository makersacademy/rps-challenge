class Game

  attr_reader :player_name 

  def initialize(player_name)
    @player_name = player_name
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

end
