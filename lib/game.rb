class Game
  attr_reader :player, :results

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def record(results)
    @results = results
  end
end
