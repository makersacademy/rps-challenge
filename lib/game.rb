class Game
  attr_reader :player_1, :player_2
  def initialize(player_1:, player_2: Player.new("Computer"))
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1:, player_2: "Computer")
    @game = Game.new(player_1: Player.new(player_1), player_2: Player.new(player_2))
  end

  def self.instance
    @game
  end
end
