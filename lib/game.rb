class Game

  def self.create(player_one)
    @game ||= Game.new(player_one)
  end

  def self.instance
    @game
  end

  attr_reader :player_one

  def initialize(player_one)
    @player_one = player_one
  end
end
