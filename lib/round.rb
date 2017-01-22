class Round

  attr_reader :player_1_move, :player_2_move, :winning_move

  @round_instance

  def initialize(player_1_move:, rules_handler: RulesHandler)
    @player_1_move = player_1_move
    @player_2_move = nil
    self.class.round_instance = self
    @winning_move = nil
    @rules_handler = rules_handler
  end

  def self.round_instance
    @round_instance
  end

  def self.round_instance=(value)
    @round_instance = value
  end

  def finish_round(player_2_move:)
    @player_2_move = player_2_move
    @winning_move = rules_handler.decide_winner(player_1_move, player_2_move)
    p winning_move
  end

  private

  attr_reader :rules_handler
end
