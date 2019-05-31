class Game
  attr_reader :player, :choice

  def initialize(player)
    @player = player
  end

  def player
    @player
  end

  def move(move)
    @player.choice(move)
  end
end
