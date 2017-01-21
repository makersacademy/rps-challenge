class Round

  attr_reader :player_1_move

  @round_instance

  def initialize(player_1_move:)
    @player_1_move = player_1_move
    self.class.round_instance = self
  end

  def self.round_instance
    @round_instance
  end

  def self.round_instance=(value)
    @round_instance = value
  end
end
