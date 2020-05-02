class Game
  attr_reader :players

  def initialize(*players)
    @players = players
  end

  def result
    [1, @players[0]]
  end
end
