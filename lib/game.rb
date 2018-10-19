class Game

  def self.instance
    @game
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  attr_reader :player_1

  attr_accessor :choices

  def initialize(player_1)
    @player_1 = player_1
    @choices = []
  end

end
