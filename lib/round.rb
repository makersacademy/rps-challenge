class Round

  attr_reader :player_1_move, :player_2_move, :winning_move, :result_message

  @round_instance = nil

  def initialize(player_1_move:, rules_handler: RulesHandler, message_handler: MessageHandler.message_handler_instance)
    @player_1_move = player_1_move
    @player_2_move = nil
    self.class.round_instance = self
    @winning_move = nil
    @result_message = nil
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
    draw? ? handle_draw : handle_win
  end

  def draw?
    player_1_move == player_2_move
  end

  private

  def handle_draw
    @result_message = message_handler.draw_result_message(player_1_move)
  end

  def handle_win
    @winning_move = rules_handler.decide_winner(player_1_move, player_2_move)
    @result_message = message_handler.battle_result_message(winning_move)
  end

  attr_reader :rules_handler, :message_handler, :draw
end
