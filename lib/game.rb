class Game
  attr_reader :player_1, :player_2

  def initialize (player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.generate (player_1 = nil, player_2 = nil)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end
end
