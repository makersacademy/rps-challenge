class Game

  attr_reader :players

  @game_instance = nil

  def initialize(player_1:, player_2:)
    @players = {}
    @players[:player_1] = player_1
    @players[:player_2] = player_2
    self.class.game_instance = self
  end

  def self.game_instance
    @game_instance
  end

  def self.game_instance=(value)
    @game_instance = value
  end

end
