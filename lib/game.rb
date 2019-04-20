class Game

  attr_reader :player_name

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  private
  def initialize(player)
    @player_name = player
  end

end
