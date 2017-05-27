class Game
  attr_reader :players

  def initialize(player, opponent)
    @players = [player, opponent]
  end

  def self.create(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game
  end

end
