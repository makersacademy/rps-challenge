class Game

  attr_reader :players, :player_1_score, :player_2_score

  @game_instance = nil

  def initialize(player_1:, player_2:)
    @players = {}
    @players[:player_1] = player_1
    @players[:player_2] = player_2
    @player_1_score = 0
    @player_2_score = 0
    self.class.game_instance = self
  end

  def self.game_instance
    @game_instance
  end

  def self.game_instance=(value)
    @game_instance = value
  end

  def update_score(player)
    player == :player_1 ? @player_1_score += 1 : @player_2_score += 1
  end

end
