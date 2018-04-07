class Game

  @@current_game

  attr_reader :active_player
  attr_reader :player_1
  attr_reader :player_2

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @player_1 = player_1
    @player_2 = player_2
    @players_array = [@player_1, @player_2]
    @@current_game = self
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end
end
