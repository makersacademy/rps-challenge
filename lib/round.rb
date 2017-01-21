class Round

  attr_reader :player_1_move, :player_2_move, :winner

  @round_instance

  def initialize(player_1_move:)
    @player_1_move = player_1_move
    @player_2_move = nil
    self.class.round_instance = self
    @winner = nil
  end

  def self.round_instance
    @round_instance
  end

  def self.round_instance=(value)
    @round_instance = value
  end

  def finish_round(player_2_move:)
    @player_2_move = player_2_move
    @winner = :player_1
  end
end
