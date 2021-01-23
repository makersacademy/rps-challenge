class Game

  attr_reader :player, :opponent

  def initialize(player, opponent = Opponent.new)
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
