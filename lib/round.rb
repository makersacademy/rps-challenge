class Round

  attr_reader :player_1_move, :player_2_move, :winning_move

  @round_instance = nil

  def initialize(player_1_move:, rules_handler: RulesHandler, message_handler: MessageHandler.message_handler_instance)
    @player_1_move = player_1_move
    @player_2_move = nil
    self.class.round_instance = self
    @winning_move = nil
    @rules_handler = rules_handler
    @message_handler = message_handler
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
    message_handler.battle_result_message(winning_move)
  end

  private

  attr_reader :rules_handler, :message_handler
end
