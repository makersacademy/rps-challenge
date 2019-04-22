class Game

  def self.instance
    @game
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  attr_reader :player_name

  def initialize(player_name)
    @player_name = player_name
  end
end
