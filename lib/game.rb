class Game

  attr_reader :player
  attr_accessor :opponent

  def initialize(player)
    @player = player
    @opponent = opponent
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

end
