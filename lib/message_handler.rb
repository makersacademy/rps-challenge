class MessageHandler

  @message_handler_instance = nil

  def initialize(message_log:)
    @message_log = message_log
    self.class.message_handler_instance = self
  end

  def self.message_handler_instance
    @message_handler_instance
  end

  def self.message_handler_instance=(value)
    @message_handler_instance = value
  end

  def enter_game_message(player_1_name, player_2_name)
    message = "#{player_1_name} and #{player_2_name} entered the game!"
    add_message_to_log(message)
  end

  def battle_result_message(winning_move, loser_name)
    message = "#{winning_move[0].to_s}'s #{winning_move[1][0].to_s.capitalize} #{winning_move[1][2]} #{loser_name}'s #{winning_move[1][1]}!"
    add_message_to_log(message)
  end

  private

  def add_message_to_log(message)
    message_log.add_message(message)
  end

  attr_reader :message_log

end
