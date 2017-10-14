class Game
  attr_reader :players

  def initialize(*players)
    @players = players
  end
end